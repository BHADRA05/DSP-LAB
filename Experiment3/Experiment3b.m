clc;
clear all;
close all;

x = input('Enter input x(n): ');
x_ind = input('Enter index of x(n): ');
h = input('Enter input h(n):');
h_ind = input('Enter index of h(n):');
y_ind = min(x_ind)+min(h_ind) : max(x_ind)+max(h_ind);
x_len = length(x);
h_len = length(h);
y_len = x_len+h_len-1
y = zeros(1,y_len);

for i = 1:x_len
    for j = 1:h_len
        y(i+j-1) = y(i+j-1) + (x(i)*h(j));
    end
end
disp(['The convolution result is:'])
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
