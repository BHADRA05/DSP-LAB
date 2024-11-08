clc;
clear;
close all;

x = input('Enter input x(n): ');
h = input('Enter input h(n): ');
c = conv(x,h);
x_len = length(x);
h_len = length(h);
y_len = max(x_len,h_len);
r1 = [c(1:y_len)];
r  = [c(y_len+1:end)];
r2 = [r zeros(1,length(r1)-length(r))];
y = r1 + r2;
disp('Circular convolution using Linear convolution: ');
disp(y);


