omega = pi/3;
x = exp(j * omega * [0:99]);
h = 0.5 * ones(1, 6);
y = conv(x, h)

subplot(3, 1, 1);
stem([0:99], x);

subplot(3, 1, 2);
stem([0:5], h);

subplot(3, 1, 3);
stem([0:104], y);