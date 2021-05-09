function [theta1, theta2, theta3] = IKPM_RRR(l1, l2, phi)
clc
x = input('Enter x: ');
y = input('Enter y: ');
theta2 = acosd((x^2 + y^2 - l1^2 - l2^2)/(2*l1*l2));
sintheta1 = ((-x*l2*sind(theta2)) + (y*l1) + (y*l2*cosd(theta2)))/((l1^2) + (l2^2) + (2*l1*l2*cosd(theta2)));
costheta1 = ((x*l1) + (y*l2*sind(theta2)) + (x*l2*cosd(theta2)))/((l1^2) + (l2^2) + (2*l1*l2*cosd(theta2)));
theta1 = atan2d(costheta1,sintheta1)
theta3 = phi - (theta1 + theta2);
clc
Print_IKPM(theta1, theta2, theta3);
end