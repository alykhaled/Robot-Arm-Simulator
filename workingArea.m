function [area] = workingArea(l1,l2,theta1_min,theta1_max,theta2_min,theta2_max)
%Working Area using Green Theorem
%Inputs: L1, L2, Theta 1 min,Theta 1 max, Theta 2 min, Theta2 max
%Return: The working area

% t1=linspace(theta1_min, theta1_max, 500)*pi/180;
% t2=linspace(theta2_min, theta2_max, 500)*pi/180;

area = 0;
for i = theta1_min:theta1_max-1
    for j = theta2_min:theta2_max-1
        x = l1 * cosd(i) + l2 * cosd(i + j);
        y = l1 * sind(i) + l2 * sind(i + j);
        x2 = l1 * cosd(i) + l2 * cosd(i + j+1);
        y2 = l1 * sind(i) + l2 * sind(i + j+1);
        area = area + ((x2 + x)*(y2 - y));
    end
end
area = area/2;
area = area*pi/180;

end

