clear all;
close all;
clc;

syms t;
n=input('Maximum Limit of k:');
w=input('Angular Frequency:');
T=2*pi/w;
q=input('Function in t:');
y=inline(q);
a=[];
i=1;

for k=-n:n
  x=@(t)(y(t).*exp(-j*k*w*t));
  a(i)=integral(x,0,T)/T;
  i=i+1;
end

l=1;
p=-n:n;
i=1;
x1=[];
k=1;

for t=0:0.1:10
  x1(k)=0;
  for i = l:2*n+1
    x1(k)=x1(k)+a(i)*exp(-j*k*w*t);
  end
end

subplot(3,1,1);
stem((-n:n), abs(a));
title('Magnitude');
xlabel('k');
ylabel('a(k)');

subplot(3,1,2);
stem((-n:n), angle(a));
title('Phase');
xlabel('k');
ylabel('Phase a(k)');

subplot(3,1,3);
stem((0:0.1:10), x1);
title('Phase');
xlabel('k');
ylabel('Phase a(k)');
