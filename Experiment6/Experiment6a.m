clc;
clear all;
close all;
xn = input('Enter the input x(n): ');
N = input('Enter the no. of points: ');
L = length(xn);
if(N<L)
    error('N should be greater than or equal to L: ');
end
x = [xn zeros(1,N-L)];
X = zeros(N,1);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-i*2*pi*k*n/N);
    end 
end

disp('X');
disp(X);
disp('Without using built-in function');
disp(round(X));
disp('Using built-in function');
disp(fft(x));
n=0:L-1;
K=n';
W=exp(-1i*2*pi*(K*n)/N);
Y=x.*W;
disp('Using twiddle factor');
disp(Y);

%magnitude spectrum
subplot(2,1,1);
k = 0:N-1;
magx = abs(X);
stem(k,magx);
hold on;
plot(k,magx);
xlabel('frequency');
ylabel('magnitude');
title('DFT Magnitude plot')

%phase spectrum
subplot(2,1,2);
phasex = angle(X);
stem(k,phasex);
hold on;
plot(k,phasex);
xlabel('frequency');
ylabel('phase');
title('DFT Phase plot')

7