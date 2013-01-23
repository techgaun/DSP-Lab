clc;
wp = 1000;
ws = 1500;
fs = 10000;

WP = (2*pi*wp)/fs;
WS = (2*pi*ws)/fs;
TB = WS - WP;

n= (8*pi)/TB;
N = ceil(n);
Wc = WP+(TB/2);

hn = fir1(N-1,Wc/pi);
disp('Filter Coefficients Of FIR filter: ');
figure(1);
freqz(hn);
[M,w] = freqz(hn);
m = abs(M);
figure(2);
plot(w/pi,m)