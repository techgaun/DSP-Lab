n = 0:49;
x = sin(.2 * pi * n);
figure(1);
stem(n, x);
title('Sinusoidal signal of period 50');

X = fft(x, 100);

figure(2);
stem(X);

figure(3);
stem(angle(X));