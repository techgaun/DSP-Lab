n = 0:49;
x = 1 + sin((pi * n/12) + (3 * pi/8));
figure(1);
stem(n, x);

X = fft(x);
DTFS = X/100

