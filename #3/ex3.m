n = -18:17;
%x = [ones(1, 4), zeros(1, 2),ones(1, 4), zeros(1, 2),ones(1, 4), zeros(1, 2),ones(1, 4), zeros(1, 2),ones(1, 4), zeros(1, 2),ones(1, 4), zeros(1, 2)];
x = repmat([ones(1,4), zeros(1,2)], 1, 6);
stem(n, x);pause;
X = fft(x);
figure(1);
stem(X);
figure(2);
stem(abs(X));
figure(3);
stem(angle(X));
X = fft(x)/36;
figure(4);
plot(n, X);