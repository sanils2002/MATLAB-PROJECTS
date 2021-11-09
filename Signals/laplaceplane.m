clear all;
close all;
clc;

[sigma omega] = meshgrid(-20:0.1:20) %meshgrid
s = sigma + j*omega;
H = abs((s.^3-125)./((s+5).*(s-10))); %transfer function
mesh(sigma, omega, H)
xlabel('\Sigma');
ylabel('\Omega');
zlabel('H(s)');
title('Laplace Plane');