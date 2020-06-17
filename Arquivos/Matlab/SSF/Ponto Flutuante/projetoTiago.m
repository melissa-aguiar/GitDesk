load signal_var
load b48e7

totalSamples = 1820;
[signalT, signalN] = signalGenerator(totalSamples, bunch, fillAd, fillAe, detour, LUMEN, noise, matrix, exp_mean);

pass = 0;
Ad = length(fillAd);
Ae = length(fillAe);
Cd = length(fillCd);
Ce = length(fillCe);
toall = 2 * (Ce - Cd)-1;
mu = 0.25;
signalA = zeros(1, totalSamples * window);
signalW = zeros(1, bunch + 7);

for it = 1:totalSamples
    pass = ((it * window) - (window -1));
    signalW(Cd+1:end-Ce) = signalN(pass:pass + (window -2));
    
    x = signalW(4:end - 3 - toall)';
    Hs = (H' * signalW(1:end - toall)');
    x = algo('s', 'ssf', x, Hs, mu, 110, A, 0);   
    signalA(pass+Ad:pass+window-Ae-1) = x;
end
fprintf('RMS between Truth and (Float = %f)\n', eqm(signalT-signalA));
fprintf('STD between Truth and (Float = %f)\n', std(signalT-signalA));
figure
%stem(signalN(1:50),'x','g');
%hold on
stem(signalA(1:50),':k','MarkerFaceColor','red','MarkerEdgeColor','k');
hold on
stem(signalT(1:50),'-.diamondb','filled');
%legend('Sinal com pile-up','Sinal reconstruído','Sinal alvo','Location','northwest');
legend('Sinal reconstruído','Sinal alvo','Location','northwest');
title('Gráfico da Amplitude pelo Índice da Amostra');
xlabel("Índice da Amostra");
ylabel("Amplitude (Unidade Arbitrária)");
grid on

figure
bar3(H);
title('Coeficientes da Matriz H');
grid on

figure
bar3(A);
title('Coeficientes da Matriz A');
grid on


