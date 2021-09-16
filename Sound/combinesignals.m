clear all;
close all;
clc;

%To plot two audio signals simultaneously...

[wave1,fs1]=audioread('sample1.wav'); 
[wave2,fs2]=audioread('sample2.wav');

plot(wave1); 
hold on;
plot(wave2); 

title('Combined 2 Sound Signals');
xlabel('Time');
ylabel('Amplitude');
legend('Sample1','Sample2');
