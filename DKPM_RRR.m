function [x, y, phi] = DKPM_RRR(l1, l2, l3,theta1,theta2,theta3)
x = (l1*cosd(theta1)) + (l2*cosd(theta1 + theta2) + (l3*cosd(theta1 + theta2 + theta3)));
y = (l1*sind(theta1)) + (l2*sind(theta1 + theta2) + (l3*sind(theta1 + theta2 + theta3)));
phi = theta1 + theta2 + theta3;
end