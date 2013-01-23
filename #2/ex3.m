omega = pi/4;
x = exp(j * omega * [0:50]);
h = [1/2, -1/2];
y = conv(x, h);
subplot(2, 1, 1);
ry = real(y);
stem([0:50], ry(1:51));
xlabel('n');    ylabel('amplitude');
title('real values');

subplot(2, 1, 2);
iy = imag(y);
stem([0:50], iy(:,1:51));
xlabel('n');    ylabel('amplitude');
title('imaginary values');