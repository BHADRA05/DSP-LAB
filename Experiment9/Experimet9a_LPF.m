clc;
clear all;
close all;

wc = 0.5*pi;
eps = 0.001;
N = input("Enter N: ");
alpha = (N-1)/2;
n = 0:1:N-1;
hd = (sin(wc*(n-alpha+eps))./(pi*(n-alpha+eps)));

wr = boxcar(N);
whm = hamming(N);
whn = hanning(N);
wt = bartlett(N);
w = 0:0.01:pi;
hn1 = hd.*wr';
hn2 = hd.*whm';
hn3 = hd.*whn';
hn4 = hd.*wt';

h1 = freqz(hn1,1,w);
h2 = freqz(hn2,1,w);
h3 = freqz(hn3,1,w);
h4 = freqz(hn4,1,w);

subplot(4,2,1);
stem(wr);
xlabel("No. of samples");
ylabel("Amplitude");
title("Rectangular window");

subplot(4,2,2);
plot(w/pi,10*log10(abs(h1)));
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
title("High Pass filter using rectangular window");

subplot(4,2,3);
stem(whm);
xlabel("No. of samples");
ylabel("Amplitude");
title("Hamming window");

subplot(4,2,4);
plot(w/pi,10*log10(abs(h2)));
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
title("High Pass filter using hamming window");

subplot(4,2,5);
stem(whn);
xlabel("No. of samples");
ylabel("Amplitude");
title("Hanning window");

subplot(4,2,6);
plot(w/pi,10*log10(abs(h3)));
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
title("High Pass filter using hanning window");

subplot(4,2,7);
stem(wt);
xlabel("No. of samples");
ylabel("Amplitude");
title("Hanning window");

subplot(4,2,8);
plot(w/pi,10*log10(abs(h4)));
xlabel("Normalised frequency");
ylabel("Magnitude in dB");
title("High Pass filter using triangular window");