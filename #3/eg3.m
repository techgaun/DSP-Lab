num = [1];
den = [1 -.5 .5];
figure(1);
zplane(num, den);
title('Pole zero plot');

figure(2);
freqz(num, den);
title('frequency response');
figure(3);
impz(num, den);
title('Impulse Response');
[r,p,k] = residuez(num, den);