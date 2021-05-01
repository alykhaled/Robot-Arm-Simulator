function [] = WorkSpace(l1,l2,l3,theta1_min,theta1_max,theta2_min,theta2_max,theta3_min,theta3_max)
t1=linspace(theta1_min, theta1_max, 100);
t2=linspace(theta2_min, theta2_max, 100);
t3=linspace(theta3_min, theta3_max, 100);
[q1,q2,q3]=ndgrid(t1,t2,t3);
xM = l1 * cosd(q1) + l2 * cosd(q1 + q2) + l3 * cosd(q1 + q2 + q3);
yM = l1 * sind(q1) + l2 * sind(q1 + q2) + l3 * sind(q1 + q2 + q3);
plot(xM(:),yM(:),'k.')

% xL = xlim; %all values of x 
% yL = ylim; % all values of y 
% line(xL, [0 0],'color','b','linewidth',1) %Draw x-axis
% line([0 0], yL,'color','b','linewidth',1) %Draw y-axis
grid on
end
% l1 = 5;
% l2 = 4;
% l3 = 30;
% 
% q1_min = 0;
% q1_max = 180;
% q2_min = 0;
% q2_max = 90;
% % q3_min = -90;
% % q3_max = 150;
% 
% % 
% 
% 
% % x = l1 * cos(t1) + l2 * cos(t1 + t2);
% % y = l1 * sin(t1) + l2 * sin(t1 + t2);
% 
% xN = l1 * cosd(t1) + l2 * cosd(t1 + t2);
% yN = l1 * sind(t1) + l2 * sind(t1 + t2);
% % [Xsorted,I] = sort(xM);
% % Ysorted = yM(I);
% % area = 0;
% % for i = 1:499
% %     for j = 1:499
% %         area = area + ((Xsorted(i+1,j)- Xsorted(i,j))*(Ysorted(i+1,j) + Ysorted(i,j)));
% %     end
% % end
% 
% 
% % for i = q1_min:q1_max-1
% %     for j = q2_min:q2_max-1
% %         x = l1 * cosd(i) + l2 * cosd(i + j);
% %         y = l1 * sind(i) + l2 * sind(i + j);
% %         x2 = l1 * cosd(i) + l2 * cosd(i + j+1);
% %         y2 = l1 * sind(i) + l2 * sind(i + j+1);
% %         area = area + ((x2 + x)*(y2 - y));
% %     end
% % end
% 
% % area = area/180;
% % area = area/2
% 
% grid on