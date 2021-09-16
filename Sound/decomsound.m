clear all;
close all;
clc;

%To decompose an audio signal into odd and even components...

p = 'Time for recording:';
t = input(p);
a = audiorecorder(8000, 8, 1);
disp('Start recording:');
recordblocking(a, t);
disp('End recording:');

play(a);
y=getaudiodata(a);
figure;
plot(y);
grid on;
title('x(t) ---> Original Sound');
xlabel('Time');
ylabel('Amplitude');

l=length(y);
y1=flipud(y);
figure;
plot(y1);
grid on;
title('x(-t) ---> Flipped Sound');
xlabel('Time');
ylabel('Amplitude');

y2=[];
for i=1:l-1
  p1=y(t=i);
  q1=y1(t=l-i);
  r1=p1+q1/2;
  y2=[y2 r1];
endfor
figure;
plot(y2);
grid on;
title('Even Sound');
xlabel('Time');
ylabel('Amplitude');

y3=[];
for i=1:l-1
  p2=y(t=i);
  q2=y1(t=l-i);
  r2=p2-q2/2;
  y3=[y3 r2];
endfor
figure;
plot(y3);
grid on;
title('Odd Sound');
xlabel('Time');
ylabel('Amplitude');
