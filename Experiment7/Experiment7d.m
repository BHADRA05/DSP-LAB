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

lhs = sum(x.*conj(y));
c = sum(X.*conj(Y));
rhs = c/N;

disp("LHS");
disp(lhs);
disp("RHS");
disp(rhs);

if lhs == rhs
    disp("Parseval's theorem verified");
else
    disp("Parseval's theorem is not verified");
end
