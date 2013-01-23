h = [1,2,1];    x = [2,3,-2];
y = conv(x, h); subplot(3,1,1);
stem([-1:1], h);
xlabel('n'); ylabel('h[n]');
title('Impulse response');
subplot(3,1,2);
stem([0:2], x);
xlabel('n');    ylabel('x[n]');
title('input');

subplot(3,1,3);
stem([-1:3], y);
xlabel('n');    ylabel('y[n]');
title('output');