function [] = straightLineTraj(l1,l2,l3,theta1_min,theta1_max,theta2_min,theta2_max,theta3_min,theta3_max,xi,yi,xf,yf)
%STRAIGHTLINETRAJ Summary of this function goes here
%   Detailed explanation goes here

workingArea(l1,l2,l3,theta1_min,theta1_max,theta2_min,theta2_max,theta3_min,theta3_max);
hold on
line1 = line ([0,0] , [0,1]);
line2 = line ([0,0] , [0,1]);
line3 = line ([0,0] , [0,1]);
mainPath = line([xi , xf],[yi , yf]);
figure(1);
Xf = [xf yf];
Xi = [xi yi];
a5 = 6*(Xf - Xi);
a4 = -15*(Xf - Xi);
a3 = 10*(Xf - Xi);
a2 = 0;
a1 = 0;
a0 = Xi;
time = linspace(0,1,10);
for i = 1:length(time)
    X = (time(i)^5).*a5 + a4*time(i)^4 + a3*time(i)^3 + a0;
    x = X(1);
    y = X(2);
    phi = atand(y/x);
    [q1,q2,q3] = ikpm(l1,l2,l3,x,y,phi);
    x1 = l1*cosd(q1);
    y1 = l1*sind(q1);
    x2 = x1 + l2*cosd(q1+ q2);
    y2 = y1 + l2*sind(q1+ q2);
    x3 = x2 + l3*cosd(q1+ q2+ q3);
    y3 = y2 + l3*sind(q1+ q2+ q3);
    set (line1, 'XData',[0,x1], 'YData',[0, y1] );
    set (line2, 'XData',[x1,x2], 'YData',[y1, y2] );
    set (line3, 'XData',[x2,x3], 'YData',[y2, y3] );
    drawnow;
%     plot([0,x1],[0,y1],'k+',x2,y2,'ro',[0 x1 x2],[0 y1 y2],'k-','linewidth',4);
    axis([-15 15 -15 15])
%     addpoints(h,[0,x1],[0,y1]);
%62.241205123286510,1.526804778217549e+02,-1.647272540373066e+02
end



end

