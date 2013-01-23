clc;
clear all;
close all;

del1 = input('Enter the maximum pass band attenuation in dB: ');
del2 = input('Enter the minimum stop band attenuation in dB: ');
wp = input('Enter analog pass band cutoff frequency in Hz: ');
ws = input('Enter analog stop band cutoff frequency in Hz: ');
fs = input('Enter the sampling frequency in Hz: ');
Wp = 2 * pi * wp;
Ws = 2 * pi * ws;

[N, wc] = buttord(Wp, Ws, del1, del2, 's');
disp('The minimum order required using Butterworth approximation is');
disp(N);
[bs, as] = butter(N, wc, 'low', 's');
[b,a] = bilinear(bs, as, fs);
disp('Numerator coefficients are:');
disp(b);
disp('Denominator coefficients are:');
disp(a);
freqz(b,a);
title('Frequency response of IIR filter designed');