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

p = x.*y; 
lhs = fft(p);
c = cconv(X,Y,N); 
rhs = c/N;

disp("LHS"); 
disp(lhs); 
disp("RHS"); 
disp(rhs);
 
if lhs == rhs
    disp('Multiplication property holds'); 
else
    disp('Multiplication property does not hold');
end
