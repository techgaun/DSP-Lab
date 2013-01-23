x = 2 * ones(1, 14);
h = 0.9.^[1:11] .* (ones(1, 11))

y = conv(x, h);

subplot(3, 1, 1);
stem([-2:11], x);
xlabel('n');    ylabel('x[n]');
title('Input');

subplot(3, 1, 2);
stem([1: 11], h);
xlabel('n');    ylabel('h[n]');
title('Impulse Response');

subplot(3, 1, 3);
stem([0:23], y);
xlabel('n');    ylabel('y[n]');
title('Output');