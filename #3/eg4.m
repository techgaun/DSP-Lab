
num = [1 -10 -4 4];
den = [2 -2 -4];

figure(1);
zplane(num, den);

[H, w] = freqz(b, a, 100);
figure(2);
plot(w, H);
title('Frequency Response');
[h, n] = impz(b, a);
figure(3);
stem(n, h);
title('Impulse Response');
[r,p,k] = residuez(num, den)