clear
clc
l1 = 50;
l2 = 30;
% l3 = 30;

q1_min = 0;
q1_max = 210;
q2_min = 0;
q2_max = 180;
% q3_min = -90;
% q3_max = 150;

t1=linspace(q1_min, q1_max, 200)*pi/180;
t2=linspace(q2_min, q2_max, 200)*pi/180;
% t3=linspace(q3_min, q3_max, 200)*pi/180;

[q1,q2]=ndgrid(t1,t2); 
xM = l1 * cos(q1) + l2 * cos(q1 + q2);
yM = l1 * sin(q1) + l2 * sin(q1 + q2);
plot(xM(:),yM(:),'b.')
grid on