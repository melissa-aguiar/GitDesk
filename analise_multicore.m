freq = [160 200 240 280 320 360 400 440 480 520 560 600 640 680 720 760 800 840 880 920 960 1000];

n_proc = [147 115 96 83 73 65 59 53 49 45 42 40 37 35 33 32 30 29 27 26 25 25];

delta_t = [389643.75 311735 260099.973 224803.82 197628.125 175944.63 159662.5 143424.027 132572.854 121621.812 113480.654 108083.279 99992.925 94586.771 89166.855 86473.044 81058.75 78392.811 72937.413 70260.419 67631.01 64955];

EL= [101665 76576 61612 60352 52500 47234 47750 43048 41088 39557 39564 38043 36477 35712 34946 34554 35743 35177 33993 33389 33649 33649];
mult = [532 532 532 400 400 390 308 308 294 270 232 232 222 210 198 192 180 174 162 156 150 150];

bar(freq,n_proc)
grid on
xlabel('Frequência [MHz]');
ylabel('Número de Processadores');
title('Quantidade Necessária de Processadores');

figure;

bar(freq,delta_t)
grid on
xlabel('Frequência [MHz]');
ylabel('\Delta t [\mu s]');
title('Tempo de Atraso');

figure;

bar(freq,EL)
grid on
xlabel('Frequência [MHz]');
ylabel('Número de Elementos Lógicos');
title('Custo em Elementos Lógicos');
