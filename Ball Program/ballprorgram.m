function bouncing_ball
t=linspace(0,14*pi,50);
x=cos(t);
y=sin(t);
markoer=plot(x(1),y(1),'r','MarkerSize',50);
axis equal
axis([-1,1,-1,1]);
for k=1:50
set(markoer,'XData',x(k),'YData',y(k))
pause(0.99)
a=[1 1];
b=[1 -1];
c=[-1 -1];
d=[-1 1];
line(a,b,'color', "blue",'linewidth', 2);
line(c,d,'color', "blue",'linewidth', 2);
end
function r=big_ball(t)
r=[cos(t);sin(t)];
