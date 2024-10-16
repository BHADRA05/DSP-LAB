clc;
clear all;
close all;

x = input('Enter input x(n): ');
x_ind = input('Enter index of x(n): ');
h = input('Enter input h(n):');
h_ind = input('Enter index of h(n):');

x_len = length(x);
h_len = length(h);
y_len = max(x_len,h_len);
newx = [x zeros(1,y_len-x_len)];
newh = [h zeros(1,y_len-h_len)];

x1 = fft(newx);
h1 = fft(newh);
hx = x1.*h1;
c = ifft(hx);
disp(['Using FFT and IFFT:']);
disp(c);


