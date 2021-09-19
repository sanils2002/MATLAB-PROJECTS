clear all;
close all;
clc;

th=-pi:0.001:pi;
x=exp(j.*th);
a=real(x);
b=imag(x);

subplot(2,1,1);
plot3(a,b,th);
xlabel('Real(x)');
ylabel('Imaginary(x)');
zlabel('Angular frequency (-pi:pi)');
title('Plot real and imaginary parts w.r.t. th');

subplot(2,1,2);
plot(a,b);
xlabel('Real(x)');
ylabel('Imaginary(x)');
title('Plot real v/s imaginary');