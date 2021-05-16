function [theta1,theta2,theta3] = ikpm(l1,l2,l3,x,y,theta1_min,theta1_max,theta2_min,theta2_max,theta3_min,theta3_max)
%Inverse Kinematics Function
%Inputs: L1, L2,L3, X, Y, Phi
%Return: The angles of Theta 1, Theta 2,Theta 3

for phi = 0:360
    wx = x - l3*cosd(phi);
    wy = y - l3*sind(phi);

    theta2 = real(acosd((wx^2 + wy^2 - l1^2 - l2^2)/(2*l1*l2)));
    costheta = (l1*wx + l2*wy*sind(theta2) + l2*wx*cosd(theta2))/(l1^2 + l2^2 + 2*l1*l2*cosd(theta2));
    sintheta = (l1*wy + l2*wy*cosd(theta2) - l2*wx*sind(theta2))/(l1^2 + l2^2 + 2*l1*l2*cosd(theta2));
    theta1 = atan2d(sintheta,costheta);
    theta3 = phi - theta2 - theta1;   
    
    if theta1 >= theta1_min && theta1 <= theta1_max
        if theta2 >= theta2_min && theta2 <= theta2_max
            if theta3 >= theta3_min && theta3 <= theta3_max
                break;
            end
        end
    end
end
end

