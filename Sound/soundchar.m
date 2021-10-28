clear all;
close all;
clc;

%To modify an audio signal...

a = audiorecorder(8000, 8, 1);
p = 'Time for recording:';
t = input(p);

disp('Start recording:');
recordblocking(a, t);
disp('End recording:');

play(a);
q = getaudiodata(a);
l = length(q);
figure;
plot(q);
title('Original Sound');
xlabel('Time');
ylabel('Amplitude');

prompt = 'Choice:'; %1. Beginning 2. End
x = input(prompt);

while (x)
  if x==1
    
    p1 = 'Attenuation(<1)/Amplification(>1) factor:'; % =1: No change
    f = input(p1);
    p2 = 'Delay Time(sec.):'; % 0: No change
    g = input(p2);
    p5 = '1. Slow down, 2. Speed up:';
    i = input(p5);
    p3 = 'Slow down or speed up factor:'; % 1: No change
    e = input(p3);
    q = flipud(q);
    if i==2 %Speed up
      r = [zeros(g*8000, 1) ; q(1:e:end)];
      sound(f.*r, 8000);
      figure;
      plot(f.*r);
      title('Modified Sound');
      xlabel('Time');
      ylabel('Amplitude');
      break;
     elseif i==1 %Slow down
      c = length(q);
      d = zeros(e*c, 1);
      d(e:e:end) = q;
      r = [zeros(g*8000, 1) ; d];
      sound(f.*r, 8000);
      figure;
      plot(f.*r);
      title('Modified Sound');
      xlabel('Time');
      ylabel('Amplitude');
      break;
     else 
      e=1;
      r = [zeros(g*8000, 1) ; q(1:e:end)];
      sound(f.*r, 8000);
      figure;
      plot(f.*r);
      title('Modified Sound');
      xlabel('Time');
      ylabel('Amplitude');
      break;
    end
   break;
   
   elseif x==2
    
    p1 = 'Attenuation(<1)/Amplification(>1) factor:'; % =1: No change
    f = input(p1);
    p2 = 'Delay Time(sec.):'; % 0: No change
    g = input(p2);
    p5 = '1. Slow down, 2. Speed up:';
    i = input(p5);
    p3 = 'Slow down or speed up factor:'; % 1: No change
    e = input(p3);
    q = flipud(q);
    if i==2 %Speed up
      r = [zeros(g*8000, 1) ; q(1:e:end)];  
      sound(f.*r, 8000);
      figure;
      plot(f.*r);
      title('Modified Sound');
      xlabel('Time');
      ylabel('Amplitude');
      break;
     elseif i==1 % Slow down
      c = length(q);
      d = zeros(e*c, 1);
      d(e:e:end) = q;
      r = [zeros(g*8000, 1) ; d];
      sound(f.*r, 8000);
      figure;
      plot(f.*r);
      title('Modified Sound');
      xlabel('Time');
      ylabel('Amplitude');
      break;
     else 
      e=1;
      r = [zeros(g*8000, 1) ; q(1:e:end)];
      sound(f.*r, 8000);
      figure;
      plot(f.*r);
      title('Modified Sound');
      xlabel('Time');
      ylabel('Amplitude');
      break;
    end
   break;
   
 else 
   p4 = 'Wrong choice please re-enter:';
   disp(p4);
   x = input(prompt);
   break;
 end
end
   
