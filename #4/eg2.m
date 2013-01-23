clc;
N = input('Enter the length of filter: ');
wc = input('Enter the cut-off frequency: ');

hn = fir1(N-1, wc/pi);
disp('filter coefficients of FIR filter: ');
disp(hn);
figure(1);  freqz(hn);
[M, w] = freqz(hn, 1);
m = abs(M); figure(2); plot(w/pi, m);