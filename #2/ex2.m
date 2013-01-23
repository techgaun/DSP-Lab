a = [1, -1.143, 0.4128,];
b = [0.0675, 0.1349, 0.0675];
x = zeros(1, 50);
yi = [1, 2];
zi = filtic(b, a, yi);
y = filter(b, a, x, zi)
stem([0:49], y);
xlabel('n');
ylabel('y[n]');