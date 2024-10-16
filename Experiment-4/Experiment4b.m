clc;
clear all;
close all;
xn = input('Enter input x(n): ');
hn = input('Enter input h(n): ');
x = [];
xn = xn(:,end:-1:1);
for i = 1: length(xn)
    xn = [xn(end) xn(1:end-1)];
    x = [x;xn];
end
y = x*hn';
disp(['Using Matrix method:'])
disp(y);


