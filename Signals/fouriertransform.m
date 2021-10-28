clear all;
close all;
clc;

syms t w;
x=input('Function in t:');
y=inline(x);
Y1=@(t,w)y(t).*exp(-j*w*t);
a=input('Lower Time Limit:');
b=input('Upper Time Limit:');
n=input('Maximum Limit of w:');
X=@(w)integral(@(t)Y1(t,w),a,b);
i=1;

for w=-n:n
  A(i)=X(w);
  i=i+1;
end

subplot(1,2,1);
stem((-n:n), abs(A));
title('Magnitude');
xlabel('w');
ylabel('X(w)');

subplot(1,2,2);
stem((-n:n), angle(A));
title('Phase');
xlabel('w');
ylabel('Phase X(w)');
