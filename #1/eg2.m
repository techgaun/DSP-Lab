clc;
B = 20;
w0 = 2 * pi * 1000;
t = -0.002:0.000001:0.002;
phi = -pi/3;

for a = [500:250:1000]    
    sin_wave = B * sin(w0 * t + phi) .*exp(a* t);
    figure;
    plot(t, sin_wave);
    grid;
    xlabel('t'); ylabel('x(t)');
    title('Growing Sinusoidal signal');
end
