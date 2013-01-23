%example 3
clc;
clear all;
close all;
N = 4;
wc = 4000;
r = 0.5;
[num, den] = cheby1(N, r, wc, 'low', 's');
fs = 10000;
[b, a] = bilinear(num, den, fs);
disp('Numerator coefficients are: ');
disp(b);
disp('Denominator coefficients are: ');
disp(a);
[M, w] = freqz(b, a);
m = abs(M);
plot(w/pi, m);
title('Magnitude Response');