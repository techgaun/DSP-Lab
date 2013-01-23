x = ones(1, 20);
h = [1, -1];
y = conv(x, h)

subplot(3, 1, 1);
stem([0:19], x);

subplot(3, 1, 2);
stem([0:1], h);

subplot(3, 1, 3);
stem([0:20], y(:,1:21));