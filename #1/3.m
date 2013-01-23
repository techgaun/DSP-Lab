t = 0:0.01:5;
part1 = 10 * exp(-t);
part2 = 5 * exp(-0.5 * t);
result = part1 - part2;
figure(1);
plot(t, result);
grid;
xlabel('t'); ylabel('x(t)');
title('Differential eqn');
