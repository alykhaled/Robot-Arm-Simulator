function [area] = workingArea(l1,l2,theta1_min,theta1_max,theta2_min,theta2_max)
%Working Area using Green Theorem
%Inputs: L1, L2, Theta 1 min,Theta 1 max, Theta 2 min, Theta2 max
%Return: The working area
[v1x,v1y] = dkpm(l1,l2,theta1_min,theta2_min);
[v2x,v2y] = dkpm(l1,l2,theta1_min,theta2_max);
[v3x,v3y] = dkpm(l1,l2,theta1_max,theta2_min);
[v4x,v4y] = dkpm(l1,l2,theta1_max,theta2_max);

v1 = [v1x;v1y];
v2 = [v2x;v2y];
v3 = [v3x;v3y];
v4 = [v4x;v4y];
% x = [v1x v2x v3x v4x];
% y = [v1y v2y v3y v4y];
v = [v1 v2 v3 v4];
% a = polyarea(x,y);
area = 0;

for i = theta1_min:theta1_max
    for j = theta2_min:theta2_max
        [x,y] = dkpm(l1,l2,i,j);
        [x2,y2] = dkpm(l1,l2,i,(j+1));
        area = area + (x2 + x)*(y2 - y)/2;
    end
end

% for i = theta1_min:theta1_max
%     [x,y] = dkpm(l1,l2,i,theta2_max);
%     [x2,y2] = dkpm(l1,l2,i+1,theta2_max);
%     area = area + (x2 + x)*(y2 - y)/2;
% end
% for i = theta2_min:theta2_max
%     [x,y] = dkpm(l1,l2,theta1_min,i);
%     [x2,y2] = dkpm(l1,l2,theta1_min,i+1);
%     area = area + (x2 + x)*(y2 - y)/2;
% end
% for i = theta2_min:theta2_max
%     [x,y] = dkpm(l1,l2,theta1_max,i);
%     [x2,y2] = dkpm(l1,l2,theta1_max,i+1);
%     area = area + (x2 + x)*(y2 - y)/2;
% end
% for i = 1:3
%     area = area + (v(1,i) + v(1,i+1))*(v(2,i+1) - v(2,i));
% end
% area = a;

end
