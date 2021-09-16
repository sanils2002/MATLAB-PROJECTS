clear all;
close all;
clc;

[wave1,fs1]=audioread('Indian National Anthem.wav'); 
[wave2,fs2]=audioread('Sri Lankan National Anthem.wav');

plot(wave1); 
hold on;
plot(wave2); 

title('Combined 2 Sound Signals');
xlabel('Time');
ylabel('Amplitude');
legend('Indian National Anthem','Sri Lankan National Anthem');