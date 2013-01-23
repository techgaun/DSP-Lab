a = [1 -1.143 0.4128];
b = [0.0675 0.1349 0.0675];
x = ones(1, 50);

y = filter(b, a, x);
figure(1);
stem([0:49], y);
figure(2);
x = cos( pi * [0:99]/5);
y = filter(b, a, x);
figure(2);
stem([0:99], y);