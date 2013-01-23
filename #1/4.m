t = -50:49;

step1 = [zeros(1, 50),ones(1,50)];
step2 = [zeros(1,55), ones(1, 45)];

result = step1 - step2;
stem(t, result);
grid;