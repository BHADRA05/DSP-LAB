clc;
clear all;
close all;

x = input('Enter the input x(n): ');
y = input('Enter the input y(n): ');
lx = length(x);
ly = length(y);
N = max(lx,ly);
x = [x zeros(1,N-lx)];
y = [y zeros(1,N-ly)];

X = fft(x);
Y = fft(y);

p = cconv(x,y,N);
lhs = fft(p);
rhs = X.*Y;

disp("LHS");
disp(lhs);
disp("RHS");
disp(rhs);

if lhs == rhs
    disp('Circular convolution property holds');
else
    disp('Circular convolution property does not hold');
end
