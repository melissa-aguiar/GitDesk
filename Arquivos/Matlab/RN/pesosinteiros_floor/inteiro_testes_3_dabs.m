clear all;
%camada de entrada
IW = fopen('IW_neu1.txt');
w1 = fscanf(IW,'%f', [10 4] );
fclose(IW);
w1 = w1';

IW = fopen('IW_neu2.txt');
w2 = fscanf(IW,'%f', [10 4] );
fclose(IW);
w2 = w2';

IW = fopen('IW_neu3.txt');
w3 = fscanf(IW,'%f', [10 4] );
fclose(IW);
w3 = w3';

IW = fopen('IW_neu4.txt');
w4 = fscanf(IW,'%f', [10 4] );
fclose(IW);
w4 = w4';

w = zeros(4,10);
w(1,:) = w1;
w(2,:) = w2;
w(3,:) = w3;
w(4,:) = w4;
w1=w;

B1 = fopen('IW_bias_neu_1-3.txt');
bias1 = fscanf(B1,'%f');
fclose(B1);

B1 = fopen('IW_bias_neu_4.txt');
bias2 = fscanf(B1,'%f');
fclose(B1);

bias = zeros(4,1);
for i = 1:3
    bias(i) = bias1(i);
end
bias(4) = bias2(1);

%Sinal de entrada
Signal_test = fopen('sinaladc.txt');
y1 = fscanf(Signal_test,'%f' );
fclose(Signal_test);
y1 = y1(1:2000);

%layers
B1 = fopen('LW.txt');
layer_weight = fscanf(B1,'%f');
fclose(B1);

B1 = fopen('LW_bias.txt');
lbias = fscanf(B1,'%f');
fclose(B1);

%Lut
B1 = fopen('LUT_tansig123.txt');
lut = fscanf(B1,'%f');
fclose(B1);

B1 = fopen('LUT_tansig4.txt');
lut4 = fscanf(B1,'%f');
fclose(B1);
% ******** a saída tem que ser um vetor para poder rodar vários dados de
%  entrada.
saida = zeros(1,length(y1)/10);

% ******** Carrega saída da FPGA Para plotar a comparação no final.
% quartusFPGA_out_int = importdata('saida_fpga_rede_0_pipeline.txt','\n',10); %Delay = 10
% Saida_quartus = quartusFPGA_out_int.data;
% Saida_quartus = Saida_quartus(2:201);

%% camda de entrada
%soma = zeros(200,4);
for n = 1:length(y1)/10
    clear y2 produto lutx a;
    y2 = round(y1(n:9+n));
    for i = 1:4
        for b = 1:10
            produto(i,b)     = w(i,b)*y2(b);
        end
    end

    
    for i = 1:4
        soma(n,i) = sum(produto(i,:)) + bias(i);
    end
    


    
    for b = 1:length(soma(n,:))
        if b <=3        
            if soma(n,b) < 3*2^10 && soma(n,b) >= 0  || soma(n,b) > -3*2^10 && soma(n,b) < 0             
                lutx(n,b) = soma(n,b);
                %lutx(n,b) = 2^10*soma(n,b);            
                lutx(n,b) = abs((lutx(n,b))); % ******** nÃ£o precisa dar . jÃ¡ tÃ¡ em inteiro;
                lutx(n,b) = fix(2^-6*lutx(n,b));
                lutx(n,b) = (lutx(n,b))+1;
            else                
                    lutx(n,b) = 65;               
            end
            
        else
             if soma(n,b) < 1*2^20 && soma(n,b) >= 0  || soma(n,b) > -1*2^20 && soma(n,b) < 0             
                lutx(n,b) = soma(n,b);
                %lutx(n,b) = 2^20*soma(n,b);            
                lutx(n,b) = abs((lutx(n,b)));
                lutx(n,b) = fix(2^-6*lutx(n,b));
                lutx(n,b) = (lutx(n,b))+1;
            else                
                lutx(n,b) = length(lut4)+1;               
             end                  
        end
        
        if soma(n,b) < 0
            a(b) = true;  
        else
            a(b) = false;
        end
    end



   % Lut neuronios 123
   
    for b = 1:length(lutx(1,1:3))
        if lutx(n,b) <= length(lut)
            if a(b)
                resultado(n,b) = -lut(lutx(n,b));
            else
                resultado(n,b) = lut(lutx(n,b));
            end
        else
            if a(b)
                resultado(n,b) = -1;
            else
                resultado(n,b) = 1; 
            end
        end
       
    end
    
    %lut neuronio 4
    if lutx(n,4) <= length(lut4)
        if a(4)
            resultado(n,4) = -lut4(lutx(n,4));
        else
            resultado(n,4) = lut4(lutx(n,4));
        end
    else
        if a(4)
            resultado(n,4) = -1;
        else
            resultado(n,4) = 1; 
        end
    end  
    
    
    for i = 1:3
        hide_weight(n,i) = resultado(n,i)*layer_weight(i);%*2^8;
    end
    i = 4;
    hide_weight(n,i) = resultado(n,i)*layer_weight(i);
   

    for i = 1:4
        saida(n) = hide_weight(n,i) + saida(n); 
    end
    saida(n) = saida(n) + lbias;
   
    %exit(n) = saida;
        
end
%exit = abs(exit'); % nÃ£o entendi essa parte aqui. Pq vc tira o sinal no final?

%% Plots

% 
% stem(saida);grid;
% hold on
% stem(Saida_quartus,'r');title('saida quartus em vermelho');

%possível saida inteira fpga matlab Mateus
% load('input_lut123.mat');
% stem(lutx(:,1),'b');grid;hold on;
% stem(lutx(:,2),'g');grid;
% stem(lutx(:,3),'r');grid;
% stem(resultado(:,4),'m');grid;hold off;

% figure;stem(mem_input_intTrunc(1:200,1),'b');grid;hold on;
% stem(mem_input_intTrunc(1:200,2),'g');grid;
% stem(mem_input_intTrunc(1:200,3),'r');grid;

 resultadodabson = resultado;
 hide_weightdabson = hide_weight;
 saidadabson = saida;
% somadabson = soma;

% figure;stem(somadabson,'r');grid;hold all
% stem(soma,'g');grid;hold off;title('soma');
% 
 figure;stem(saidadabson,'r');grid;hold all
 stem(saida,'m');grid;hold off;title('saida em magenta do mateus');
% 
% figure;stem(hide_weightdabson,'r');grid;hold all
% stem(hide_weight,'g');grid;hold off;title('hide_weight em verde do mateus');
% 
% figure;stem(resultadodabson,'r');grid;hold all
% stem(resultado,'g');grid;hold off;title('resultado em verde do mateus');
% 
difsaida = saida-saidadabson;
figure;stem(difsaida);grid;title('diferença entre saidas');
media=mean(difsaida)
% 
% difhide_weight = hide_weight-hide_weightdabson;
% %figure;stem(difhide_weight(:,1),'b');grid;
% media1 = mean(difhide_weight(:,1))
% 
% %figure;stem(difhide_weight(:,2),'r');grid;
% media2 = mean(difhide_weight(:,2))
% 
% %figure;stem(difhide_weight(:,3),'g');grid;
% media3 = mean(difhide_weight(:,3))
% 
% %figure;stem(difhide_weight(:,4),'m');grid;
% media4 = mean(difhide_weight(:,4))
% 
% difresultado = resultado - resultadodabson;
% 
% media1re = mean(difresultado(:,1))
% 
% media2re = mean(difresultado(:,2))
% 
% media3re = mean(difresultado(:,3))
% 
% media4re = mean(difresultado(:,4))

% difsum1 = mean(hide_weight(:,1)-hide_weightdabson(:,1));
% difsum2 = mean(hide_weight(:,2)-hide_weightdabson(:,2));
% difsum3 = mean(hide_weight(:,3)-hide_weightdabson(:,3));
% difsum4 = mean(hide_weight(:,4)-hide_weightdabson(:,4));
for i=1:length(y1)
    y1(i) = 1;
end
