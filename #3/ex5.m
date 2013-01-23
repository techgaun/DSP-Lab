x1 = [2 1 2 1];
x2 = [1 2 3 4];
x3 = conv(x1, x2);
P = 2 * 4 - 1;
x4 = [x3, zeros(1, P)];
for i = 1:4
    x5(i) = x4(i) + x4(i + 4);
end
stem(x5);