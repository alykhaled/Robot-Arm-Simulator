function [theta1,theta2] = ikpm(l1,l2,x,y)
%Inverse Kinematics Function
%Inputs: L1, L2, X, Y
%Return: The angles of Theta 1, Theta 2

theta2 = acosd((x^2 + y^2 - l1^2 - l2^2)/(2*l1*l2));
theta1 = acosd((l1*x + l2*y*sind(theta2) + l2*x*cosd(theta2))/(l1^2 + l2^2 + 2*l1*l2*cosd(theta2)));

end

