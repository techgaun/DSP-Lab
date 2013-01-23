N = input('Enter the length of filter: ');
wc1 = 0.5708;
wc2 = 0.63;

hn = fir1(N - 1, [wc1 wc2], 'bandpass');
freqz(hn);