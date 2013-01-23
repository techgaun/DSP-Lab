x = ones(1, 20);
h = (1/2).^[0:19] .* ones(1,20);
y = conv(x, h);

subplot(3, 1, 1);
stem([0:19], x);

subplot(3, 1, 2);
stem([0:19], h);
subplot(3, 1, 3);
stem([0:38], y);