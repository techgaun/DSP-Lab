load('handel', 'y');
subplot(4, 1, 1);
plot(y(25000:30000));
b = fir1(98,20/80, hanning(99));
op = filter(b, 1, y);
f = 0:8000/127:8000;
subplot(4, 1, 3);
spect_ip = fft(y, 256);
plot(f, abs(spect_ip(1:128))/max(abs(spect_ip(1:128))));

xlabel('frequency');
subplot(4,1,4);
spect_op = fft(op, 256);
plot(f, abs(spect_op(1:128))/max(abs(spect_op(1:128))));
subplot(4,1,2);
plot(op(25000:30000));