%% Fun��o faz a convolu��o de 2 sinais caso o desvio seja 0 e simula um desvio de fase e convolui caso o desvio seja 1;
%devemos passar para esta fun��o:
%S_truth primeiro sinal a ser convoluido
%matriz_sorteio=matriz de sorteio de desvio de fase
%desvio ou nao = 0 ou 1;
% posi��o1=posi��o dos pulsos
% coluna da matriz caso queira alterar basta substituir o numero 6 na linha
% 27 da fun��o
function [sinal1]=conv_detour_arg(S_truth,matriz_sorteio,desvio,posicao1)
%% sorteando os desvios de fase

%% sianl da distribui��o "CONVOLU��O"
[N_A,c]=size(matriz_sorteio);
fase_posicao=randi([1,N_A ],1,length(posicao1));                 %Realizo o sorteio do desvio de fase de -5 a +5 ns
centro=.5+c/2;
a=((N_A-1)/2);
sinal1=zeros(1,length(S_truth)+N_A-1);                         %criando o sinal1 com o comprimento de termos da convolu��o
S_truth1=[(zeros(1,a)) S_truth (zeros(1,a))];                  % colocando zeros nas bordas do sinal truth para entrar na "convolu��o"
jj=1;
for i=1+a:length(S_truth1)-a
    aux=zeros(1,N_A);
    if S_truth1(i)~=0
        if desvio==1
            for j=1:N_A
                aux(j)=S_truth1(i)*matriz_sorteio(j,fase_posicao(jj));     % algoritmo que convolui sorteando o desvio de fase
            end                                                            % caso queira apenas a convolu��o basta mudar  o vetor matrix para o vetor a ser convoluido
        else
            for j=1:N_A
                aux(j)=S_truth1(i)*matriz_sorteio(j,centro);                       %caso o desvio de fase nao seja simulado basta escolher aqui a coluna da matriz sorteio central para convolu��o neste caso 6
            end
        end
        jj=jj+1;
    end
    sinal1(i-a:i+a)=aux+sinal1(i-a:i+a);                        %caso queira convoluir com apenas uma fase da matrix substituir fase posi��o pelo numero da coluna da fase
end

