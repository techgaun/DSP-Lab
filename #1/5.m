function [ Pulse ] = brisha5( t, step1, step2 )
    Pulse = step1 - step2;
    figure(1);
    stem(t, Pulse);
    title('DT Pulse');
    xlabel('t'); ylabel('x(t)');
end

