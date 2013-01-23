clc;
N = input('Enter the filter length: ');
wc = input('Enter the digital cut-off frequency: ');
%wd = hamming(N);
n = 0:N-1;
wd = 0.54 - 0.46 * cos(2 * pi * n/(N - 1));
disp('Coefficients of Hamming window are: ');
disp(wd);

a = (N-1)/2;
eps = 0.0001;
n = 0:N-1;
hd = sin(wc * (n - a + eps))./(pi * (n - a + eps));
disp('Desired filter coefficients: ');
disp(hd);
hn = hd .* wd;
disp('Filter coefficients of FIR filter: ');
disp(hn);
figure(2);
freqz(hn);
title('Frequency response of FIR filter: ');

[M,w] = freqz(hn);
m = abs(M);
figure(3);
plot(w/pi, m);
title('Magnitude Response');