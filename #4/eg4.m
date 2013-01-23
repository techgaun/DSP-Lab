clc;
wp = 1000;
ws = 1500;
Fs = 10000;

Wp = (2 * pi * wp)/Fs;  Ws = (2 * pi * ws)/Fs;
TB = Ws - Wp;
n = (8 * pi)/TB;    N = ceil(n);
Wc = Wp + (TB/2);
Wcn = Wc/pi;
hn = fir1(N-1, Wcn);
disp('Filter coefficients of FIR Filter: ');
figure(1);
freqz(hn);
[M, w] = freqz(hn, 1);  m = abs(M);
figure(2);  plot(w/pi, m);