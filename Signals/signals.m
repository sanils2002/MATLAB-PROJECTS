clear all;
close all;
clc;

s1 = 'Input e:';
e = input(s1);
s2 = 'Input f:';
f = input(s2);
s3 = 'Input g:';
g = input(s3);
s4 = 'Input h:';
h = input(s4);
 
x = linspace(-1,1,100);
y = cbrt(1-(x.^3));
a = linspace(2,4,100);
b = cbrt(1-(a-1).^3);
c = linspace(1,1.5,25);
y1 = 3*(1-c);
d = linspace(1.5,2,25);
y2 = (d-2)/0.5;

z1 = [x c];
z2 = [z1 d];
z = [z2 a];

q1 = [y y1];
q2 = [q1 y2];
q = [q2 b];

subplot(4,2,[1 2]);
plot(z.*f,e*q+h);
grid on;
title('Signal ex(ft)+h');
xlim([-14 14]);
ylim([-12 12]);
xlabel('Time');
ylabel('Amplitude');

subplot(4,2,[3 4]);
plot(z+f,e*q+h);
grid on;
title('Signal ex(f+t)+h');
xlim([-14 14]);
ylim([-12 12]);
xlabel('Time');
ylabel('Amplitude');

subplot(4,2,[5 6]);
plot(z.*f+g,e*q+h);
grid on;
title('Signal ex(ft+g)+h');
xlim([-14 14]);
ylim([-12 12]);
xlabel('Time');
ylabel('Amplitude');

subplot(4,2,[7 8]);
plot((z+g).*f,e*q+h);
grid on;
title('Signal ex(f(t+g)+h');
xlim([-14 14]);
ylim([-12 12]);
xlabel('Time');
ylabel('Amplitude');



