%% Fun��o utilizada para gerar os dados truth para simula��es
%devemos passar para esta fun��o:
%N_amostras= n�mero de amostras � serem geradas
%p_luminos= porcentagem de luminosidade
% retorna os pulsos sorteados e um vetor com a posi��o de cada pulso
function [S_truth,posicao1]=struth(N_amostras,p_luminos,media_exp)
%% gerando o sinal truth
p_luminos=p_luminos/100;                                       % fa�o o calculo da porcentagem da luminosidade
S_truth=zeros(1,N_amostras);                                   % crio um vetor de zeros para receber os impulsos de amplitudes sorteadas
posicao1=randperm(N_amostras,ceil(length(S_truth)*p_luminos)); % sorteio a posi��o das amostras "OBS:REQUER UM MINIMO DE UM PULSO por conta do rand "
amp_aleatoria=exprnd(media_exp,length(posicao1),1);            %sorteio a amplitude na distribui��o exponencial
% amp_distr_exp_aleatoria=ones(1,length(posicao1));            % coloco a amplitude dos impulsos tudo 1
for i=1:length(posicao1)
    S_truth(posicao1(i))=amp_aleatoria(i);
end
end
