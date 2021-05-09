function [x,y] = dkpm(l1,l2,l3,theta1,theta2,theta3)
%Direct Kinematics Function
%Inputs: L1, L2, Theta 1, Theta 2
%Return: The coordinates of X, Y 

x = l1 * cosd(theta1) + l2 * cosd(theta1 + theta2) + l3 * cosd(theta1 + theta2 + theta3);
y = l1 * sind(theta1) + l2 * sind(theta1 + theta2) + l3 * sind(theta1 + theta2 + theta3);

end

