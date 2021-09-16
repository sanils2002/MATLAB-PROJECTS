clear all;
close all;
clc;

[sig1, fs1] = audioread('Indian National Anthem.wav')
[sig2, fs2] = audioread('Sri Lankan National Anthem.wav')

if fs1>fs2
  t=-ceil(fs1):ceil(fs1);
elseif fs2>fs1
  t=-ceil(fs2):ceil(fs2);
endif

X = zeros(1, length(t));
H = zeros(1, length(t));
H(t<=fs2 & t>=0) = sig2(t<=fs2 & t>=0);
X(t>=0 & t<=fs1) = sig1(t>=0 & t<=fs1);
Y = zeros(1, length(t));

subplot(3,1,1);
plot(t,X,'r','linewidth',2);
grid on;
title('Indian National Anthem');
xlabel('Time');
ylabel('Amplitude');

for i=fs1:fs2
  H1 = fliplr(H);
  H1 = circshift(H1,[0,i]);
  a = H1.*X;
  Y(t==i) = sum(a);
endfor

subplot(3,1,2);
plot(t,H,'b','linewidth',2);
grid on;
title('Sri Lankan National Anthem');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,Y,'m','linewidth',2);
grid on;
title('Convoluted Anthems');
xlabel('Time');
ylabel('Amplitude');