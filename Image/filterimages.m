clear all;
close all;
clc;

a=imread('photo1.jpeg');
h=0.1*ones(1,10); %filter 1
h1=0.1*ones(1,20); %filter 2
b=rgb2gray(a);
o1=[]; o=[];

subplot(1,5,1);
imshow(b)
title('Original Image');

for i=1:512
  o=[o; conv(b(i,:),h)];
end

subplot(1,5,2);
imshow(mat2gray(o))
title('Filter 1');

for i=1:512
  o1=[o; conv(b(i,:),h)];
end

subplot(1,5,3);
imshow(mat2gray(o1))
title('Filter 2');

X=conv2(b,h);
subplot(1,5,4);
imshow(mat2gray(X))
title('Filter 1');

Y=conv2(b,h1);
subplot(1,5,5);
imshow(mat2gray(Y))
title('Filter 2');