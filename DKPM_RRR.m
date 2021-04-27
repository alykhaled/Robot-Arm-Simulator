function [x, y, phi] = DKPM_RRR(l1, l2, l3)
clc
theta1 = input('Enter theta 1: ');
theta2 = input('Enter theta 2: ');
theta3 = input('Enter theta 3: ');
x = (l1*cosd(theta1)) + (l2*cosd(theta1 + theta2) + (l3*cosd(theta1 + theta2 + theta3)));
y = (l1*sind(theta1)) + (l2*sind(theta1 + theta2) + (l3*sind(theta1 + theta2 + theta3)));
phi = theta1 + theta2 + theta3;
clc
Print_DKPM(x, y, phi);
end