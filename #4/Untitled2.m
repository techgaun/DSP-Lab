clc;

N = input('Enter the length of the filter: ');
t = 0:N-1;
wc = input('Enter the cut off frequency: ');
wd = hamming(N);
phi = -(N-1)/2;
eps = 0.001;
w0 = pi;
hd = ((sin(w0*t+phi+eps))-(sin(wc*t+phi+eps)))./(w0*t+phi);
hn = hd.*wd';
disp('Desired filter coefficients ');
figure(1);
freqz(hn);
[m,w] = freqz(hn);
M =abs(m);
figure(2);
plot(w/pi, M)
