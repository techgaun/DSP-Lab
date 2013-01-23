freq1 = input('Enter the lower cutoff frequency(in KHz): ');
freq2 = input('Enter the upper cutoff frequency(in KHz): ');
freq1 = 2 * pi * freq1 * 1000;
freq2 = 2 * pi * freq2 * 1000;

load('handel', 'y');
subplot(4, 1, 1);
plot(y(2500:3000));
freq = [freq1/(pi * 80000), freq2/(pi * 80000)];
b = fir1(98,freq, 'bandpass');
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
plot(op(2500:3000));