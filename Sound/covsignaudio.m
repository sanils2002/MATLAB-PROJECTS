clear all;
close all;
clc;

%To convulate 2 audio signals...

[sig1, fs1] = audioread('Sample1.wav')
[sig2, fs2] = audioread('Sample2.wav')

if fs1>fs2
  t=-ceil(fs1):ceil(fs1);
elseif fs2>fs1
  t=-ceil(fs2):ceil(fs2);
end

X = zeros(1, length(t));
H = zeros(1, length(t));
H(t<=fs2 & t>=0) = sig2(t<=fs2 & t>=0);
X(t>=0 & t<=fs1) = sig1(t>=0 & t<=fs1);
Y = zeros(1, length(t));

subplot(3,1,1);
plot(t,X,'r','linewidth',2);
grid on;
title('Sample1');
xlabel('Time');
ylabel('Amplitude');

for i=fs1:fs2
  H1 = fliplr(H);
  H1 = circshift(H1,[0,i]);
  a = H1.*X;
  Y(t==i) = sum(a);
end

subplot(3,1,2);
plot(t,H,'b','linewidth',2);
grid on;
title('Sample2');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,Y,'m','linewidth',2);
grid on;
title('Convoluted Audio');
xlabel('Time');
ylabel('Amplitude');
