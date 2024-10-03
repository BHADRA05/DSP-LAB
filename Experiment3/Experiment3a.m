clc;
clear all;
close all;

x = input('Enter input x(n):');
x_ind = input('Enter index of x(n):');
h = input('Enter input h(n):');
h_ind = input('Enter index of h(n):');
y = conv(x,h);
y_ind = min(x_ind)+min(h_ind) : max(x_ind)+max(h_ind);
disp(y);

subplot(3,1,1);
stem(x_ind,x);
xlabel('time index');
ylabel('amplitude');
title('x(n)');

subplot(3,1,2);
stem(h_ind,h);
xlabel('time index');
ylabel('amplitude');
title('h(n)');

subplot(3,1,3);
stem(y_ind,y);
xlabel('time index');
ylabel('amplitude');
title('Linear convoluted signal');
