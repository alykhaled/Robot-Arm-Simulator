function [x,y] = dkpm(l1,l2,theta1,theta2)
%Direct Kinematics Function
%Inputs: L1, L2, Theta 1, Theta 2
%Return: The coordinates of X, Y 

x = l1 * cos(theta1) + l2 * cos(theta1 + theta2);
y = l1 * sin(theta1) + l2 * sin(theta1 + theta2);

end

