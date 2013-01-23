num = [0.094 0.094*4 0.094*6 0.094*4 0.094];
den = [1 0.486 0.0177];
figure(1);
zplane(num, den);

[H, w] = freqz(num, den, 100);
figure(2);
stem(abs(H));

figure(3);
stem(angle(H));

figure(4);
impz(num, den);

[r,p,k] = residuez(num, den)