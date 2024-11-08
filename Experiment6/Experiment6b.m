clc;
clear all;
close all;
Xn = input('Enter the input x(n): ');
N = input('Enter the no. of points: ');
L = length(Xn);
if(N<L)
    error('N should be greater than or equal to L: ');
end
X = [Xn zeros(1,N-L)];
x = zeros(N,1);
for n = 0:N-1
    for k = 0:N-1
        x(n+1) = x(n+1) + X(k+1)*exp(i*2*pi*k*n/N);
    end 
end
x = x/N;
disp('x');
disp(x);
disp('Without using built-in function');
disp(round(x));
disp('Using built-in function');
disp(ifft(X));
n=0:L-1;
k=n';
W=exp(1i*2*pi*(k*n)/N);
x=X*W/N;
disp('Using twiddle factor');
disp(x);

