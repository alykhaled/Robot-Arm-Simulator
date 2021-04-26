clear 
clc

l1 = 2.5;
l2 = 1.5;
% thetaS1 = pi*[0,210]/180;
% thetaS2 = pi*[0,180]/180;

theta1 = linspace(0,210,50);
theta2 = linspace(0,180,50);
% 
% x = zeros(2*length(thetaS1), length(theta2));
% y = zeros(2-length(thetaS1), length(theta2));
% 

% for t = 1:2
%     for ith1 = 1:length(theta1)
%         x(t,ith1) = l1*cos(theta1(ith1)) + l2*cos(theta1(ith1) + thetaS2(t));
%         y(t,ith1) = l1*sin(theta1(ith1)) + l2*sin(theta1(ith1) + thetaS2(t));
%     end
%     
%     for ith2 = 1:length(theta1)
%         x(t+2,ith2) = l1*cos(thetaS2(t)) + l2*cos(theta2(ith1) + thetaS1(t));
%         y(t+2,ith2) = l1*sin(thetaS2(t)) + l2*sin(theta2(ith1) + thetaS1(t));
%     end
% end

% x = x';
% y = y';
% plot(x(:,1),y(:,1),'k-')
% hold on
% plot(x(:,2),y(:,2),'k-')
% plot(x(:,3),y(:,3),'k-')
% plot(x(:,4),y(:,4),'k-')
% grid on
for i = 1:length(theta1)
    THETA1 = theta1(i);
    for j = 1:length(theta2)
        THETA2 = theta2(j);
        x1 = l1*cosd(THETA1);
        y1 = l1*sind(THETA1);

        x2 = x1 + l2*cosd(THETA1+THETA2);
        y2 = y1 + l2*sind(THETA1+THETA2);
%         plot(x2,y2,'b')

        plot([0,x1],[0,y1],[x1,x2],[y1,y2],'linewidth',2);
        grid on
    end
end

