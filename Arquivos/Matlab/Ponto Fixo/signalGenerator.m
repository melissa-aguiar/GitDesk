function [signalT, signalN] = signalGenerator(totalSamples, bunch, fillAd, fillAe, detour, LUMEN, noise, matrix, exp_mean)
N_samples = bunch * totalSamples;
signalT = [];
[S_truth, position] = struth(N_samples, LUMEN, exp_mean);
S_truth = fix(S_truth);

for it = 1:totalSamples
    pass = ((it * bunch) - (bunch - 1));
    signalT = [signalT, fillAd];
    signalT = [signalT, S_truth(pass:pass + (bunch - 1))];
    signalT = [signalT, fillAe];
end;

[signalN] = conv_detour_arg(signalT, matrix, detour, position);
signalN = signalN + noise * randn2(1, length(signalN));
signalN = fix(signalN);
signalN = signalN(4:end-3);
end