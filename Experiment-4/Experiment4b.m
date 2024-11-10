clc;
clear all;
close all;
x = input('Enter input x(n): ');
h = input('Enter input h(n): ');
x = x(:,end:-1:1);
for i = 1:length(x)
    x = [x(end) x(1:end-1)];
    y(i) = sum(x.*h);
end
disp('Using Concentric Circle method: ');
disp(y);
