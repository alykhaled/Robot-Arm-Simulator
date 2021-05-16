function [area] = workingArea(l1,l2,l3,theta1_min,theta1_max,theta2_min,theta2_max,theta3_min,theta3_max)
%Working Area using Green Theorem
%Inputs: L1, L2, Theta 1 min,Theta 1 max, Theta 2 min, Theta2 max
%Return: The working area

close all
% 1st path:  q1 = min, q2 = min, q3 = var -- Done
% 2nd path:  q1 = min, q2 = max, q3 = var -- Done
% 3rd path:  q1 = max, q2 = min, q3 = var -- Done
% 4th path:  q1 = max, q2 = max, q3 = var -- Done
% 5th path:  q1 = var, q2 = max, q3 = max -- Done
% 6th path:  q1 = var, q2 = max, q3 = min -- Done
% 7th path:  q1 = var, q2 = min, q3 = max -- Done
% 8th path:  q1 = var, q2 = min, q3 = min -- Done
% 9th path:  q1 = min, q2 = var, q3 = min -- Done
% 10th path: q1 = min, q2 = var, q3 = max -- Done
% 11th path: q1 = max, q2 = var, q3 = min -- Done
% 12th path: q1 = max, q2 = var, q3 = max -- Done
axis([-(l1+l2+l3) (l1+l2+l3) -(l1+l2+l3) (l1+l2+l3)])

% Good : 1 2 3 8 11 12
% Bad  : 4 5 6 7 9 10  
% Edges : 1 2 6 8 10 11
% 1 6 10 
q1_min = theta1_min;
q1_max = theta1_max;
q2_min = theta2_min;
q2_max = theta2_max;
q3_min = theta3_min;
q3_max = theta3_max;

t1 = linspace(theta1_min, theta1_max, 100);
t2 = linspace(theta2_min, theta2_max, 100);
t3 = linspace(theta3_min, theta3_max, 100);

% 1st path: 
for i = 1:length(t3)
    PathX1(i) = l1*cosd(q1_min) + l2*cosd(q1_min + q2_min) + l3*cosd(q1_min + q2_min + t3(i));
    PathY1(i) = l1*sind(q1_min) + l2*sind(q1_min + q2_min) + l3*sind(q1_min + q2_min + t3(i));
    plot(PathX1(:),PathY1(:),'k');
%pause(0.03)
    hold on
end

% 2nd path: 
for i = 1:length(t3)
    PathX2(i) = l1*cosd(q1_min) + l2*cosd(q1_min + q2_max) + l3*cosd(q1_min + q2_max + t3(i));
    PathY2(i) = l1*sind(q1_min) + l2*sind(q1_min + q2_max) + l3*sind(q1_min + q2_max + t3(i));
    plot(PathX2(:),PathY2(:),'k');
%pause(0.03)
    hold on
end

% % 3rd path: 
% for i = 1:length(t3)
%     PathX3(i) = l1*cosd(q1_max) + l2*cosd(q1_max + q2_min) + l3*cosd(q1_max + q2_min + t3(i));
%     PathY3(i) = l1*sind(q1_max) + l2*sind(q1_max + q2_min) + l3*sind(q1_max + q2_min + t3(i));
%     plot(PathX3(:),PathY3(:),'k');
% %pause(0.03)
%     hold on
% end
% 
% % 4th path: 
% for i = 1:length(t3)
%     PathX4(i) = l1*cosd(q1_max) + l2*cosd(q1_max + q2_max) + l3*cosd(q1_max + q2_max + t3(i));
%     PathY4(i) = l1*sind(q1_max) + l2*sind(q1_max + q2_max) + l3*sind(q1_max + q2_max + t3(i));
%     plot(PathX4(:),PathY4(:),'k');
% %pause(0.03)
%     hold on
% end
% 
% % 5th path: 
% for i = 1:length(t1)
%     PathX5(i) = l1*cosd(t1(i)) + l2*cosd(t1(i) + q2_max) + l3*cosd(t1(i) + q2_max + q3_max);
%     PathY5(i) = l1*sind(t1(i)) + l2*sind(t1(i) + q2_max) + l3*sind(t1(i) + q2_max + q3_max);
%     plot(PathX5(:),PathY5(:),'k');
% %pause(0.03)
%     hold on
% end

% 6th path: 
for i = 1:length(t1)
    PathX6(i) = l1*cosd(t1(i)) + l2*cosd(t1(i) + q2_max) + l3*cosd(t1(i) + q2_max + q3_min);
    PathY6(i) = l1*sind(t1(i)) + l2*sind(t1(i) + q2_max) + l3*sind(t1(i) + q2_max + q3_min);
    plot(PathX6(:),PathY6(:),'k');
%pause(0.03)
    hold on
end

% % 7th path: 
% for i = 1:length(t1)
%     PathX7(i) = l1*cosd(t1(i)) + l2*cosd(t1(i) + q2_min) + l3*cosd(t1(i) + q2_min + q3_max);
%     PathY7(i) = l1*sind(t1(i)) + l2*sind(t1(i) + q2_min) + l3*sind(t1(i) + q2_min + q3_max);
%     plot(PathX7(:),PathY7(:),'k');
% %pause(0.03)
%     hold on
% end

% 8th path: 
for i = 1:length(t1)
    PathX8(i) = l1*cosd(t1(i)) + l2*cosd(t1(i) + q2_min) + l3*cosd(t1(i) + q2_min + q3_min);
    PathY8(i) = l1*sind(t1(i)) + l2*sind(t1(i) + q2_min) + l3*sind(t1(i) + q2_min + q3_min);
    plot(PathX8(:),PathY8(:),'k');
%pause(0.03)
    hold on
end

% % 9th path: 
% for i = 1:length(t2)
%     PathX9(i) = l1*cosd(q1_min) + l2*cosd(q1_min + t2(i)) + l3*cosd(q1_min + t2(i) + q3_min);
%     PathY9(i) = l1*sind(q1_min) + l2*sind(q1_min + t2(i)) + l3*sind(q1_min + t2(i) + q3_min);
%     plot(PathX9(:),PathY9(:),'k');
% %pause(0.03)
%     hold on
% end

% 10th path: 
for i = 1:length(t2)
    PathX10(i) = l1*cosd(q1_min) + l2*cosd(q1_min + t2(i)) + l3*cosd(q1_min + t2(i) + q3_max);
    PathY10(i) = l1*sind(q1_min) + l2*sind(q1_min + t2(i)) + l3*sind(q1_min + t2(i) + q3_max);
    plot(PathX10(:),PathY10(:),'k');
%pause(0.03)
    hold on
end

% 11th path: 
for i = 1:length(t2)
    PathX11(i) = l1*cosd(q1_max) + l2*cosd(q1_max + t2(i)) + l3*cosd(q1_max + t2(i) + q3_min);
    PathY11(i) = l1*sind(q1_max) + l2*sind(q1_max + t2(i)) + l3*sind(q1_max + t2(i) + q3_min);
    plot(PathX11(:),PathY11(:),'k');
%pause(0.03)
    hold on
end

% % 12th path: 
% for i = 1:length(t2)
%     PathX12(i) = l1*cosd(q1_max) + l2*cosd(q1_max + t2(i)) + l3*cosd(q1_max + t2(i) + q3_max);
%     PathY12(i) = l1*sind(q1_max) + l2*sind(q1_max + t2(i)) + l3*sind(q1_max + t2(i) + q3_max);
%     plot(PathX12(:),PathY12(:),'k');
% %pause(0.03)
%     hold on
% end

figure(1)
grid on
PathX1  = flip(PathX1);
PathY1  = flip(PathY1);

% PathX4  = flip(PathX4);
% PathY4  = flip(PathY4);

% PathX5  = flip(PathX5);
% PathY5  = flip(PathY5);

PathX6  = flip(PathX6);
PathY6  = flip(PathY6);

% PathX7  = flip(PathX7);
% PathY7  = flip(PathY7);
% 
% PathX9  = flip(PathX9);
% PathY9  = flip(PathY9);

PathX10 = flip(PathX10);
PathY10 = flip(PathY10);

area = 0;
for i = 1:length(PathX1)-1
    area = area + (PathX1(i+1) + PathX1(i))*(PathY1(i+1) - PathY1(i));
end
for i = 1:length(PathX2)-1
    area = area + (PathX2(i+1) + PathX2(i))*(PathY2(i+1) - PathY2(i));
end
% for i = 1:length(PathX3)-1
%     area = area + (PathX3(i+1) + PathX3(i))*(PathY3(i+1) - PathY3(i));
% end
% for i = 1:length(PathX4)-1
%     area = area + (PathX4(i+1) + PathX4(i))*(PathY4(i+1) - PathY4(i));
% end
% for i = 1:length(PathX5)-1
%     area = area + (PathX5(i+1) + PathX5(i))*(PathY5(i+1) - PathY5(i));
% end
for i = 1:length(PathX6)-1
    area = area + (PathX6(i+1) + PathX6(i))*(PathY6(i+1) - PathY6(i));
end
% for i = 1:length(PathX7)-1
%     area = area + (PathX7(i+1) + PathX7(i))*(PathY7(i+1) - PathY7(i));
% end
for i = 1:length(PathX8)-1
    area = area + (PathX8(i+1) + PathX8(i))*(PathY8(i+1) - PathY8(i));
end
% for i = 1:length(PathX9)-1
%     area = area + (PathX9(i+1) + PathX9(i))*(PathY9(i+1) - PathY9(i));
% end
for i = 1:length(PathX10)-1
    area = area + (PathX10(i+1) + PathX10(i))*(PathY10(i+1) - PathY10(i));
end
for i = 1:length(PathX11)-1
    area = area + (PathX11(i+1) + PathX11(i))*(PathY11(i+1) - PathY11(i));
end
% for i = 1:length(PathX12)-1
%     area = area + (PathX12(i+1) + PathX12(i))*(PathY12(i+1) - PathY12(i));
% end


area = area/2
end

