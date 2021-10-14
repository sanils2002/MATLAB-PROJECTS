clear all;
close all;
clc;

syms t;

n=input('Maximum Limit of k:');
w=input('Angular Frequency:');
T=(2*pi)/w;
q=input('Function in t:');
y=inline(q);

a=[];
i=1;

for k=-n:n
  x=@(t)(y(t).*exp(-j*k*w*t));
  a(i)=integral(x,0,T)/T;
  i=i+1;
endfor

subplot(2,1,1);
plot((-n:n),abs(a));
title('Fourier Series Coefficients');
xlabel('k');
ylabel('a(k)');

subplot(2,1,2);
plot((-n:n),angle(a));
title('Fourier Series Phase');
xlabel('k');
ylabel('Phase a(k)');
