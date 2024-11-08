clc; 
clear all; 
close all;

x = input('Enter the input x(n): '); 
y = input('Enter the input y(n): '); 
lx = length(x);
ly = length(y); 
l = max(lx,ly);
x = [x zeros(1,l-lx)];
y = [y zeros(1,l-ly)];

X = fft(x);
Y = fft(y);

a = input('Enter the value of a: ');
b = input('Enter the value of b: ');

sum = a.*x + b.*y; 
lhs = fft(sum); 
rhs = a.*X + b.*Y;

disp("LHS"); 
disp(lhs); 
disp("RHS"); 
disp(rhs);
 
if lhs == rhs
    disp('Linearity property holds'); 
else
    disp('Linearity property does not hold');
end
