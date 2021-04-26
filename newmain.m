clear
clc

samples = 200;
a1 = 2;
a2 = 1.8;

theta1_start_end = pi*[0,210]/180;
theta2_start_end = pi*[0,180]/180;

theta1 = pi*linspace(0,210,samples)/180;
theta2 = pi*linspace(0,180,samples)/180;

x = zeros(2*length(theta1_start_end),length(theta2));
y = zeros(2*length(theta1_start_end),length(theta2));

for t = 1:2
    for ith1 = 1:length(theta1)
        x(t:ith1) = a1*cos(theta1(ith1)) + a2*cos(theta1(ith1) + theta2_start_end(t));
        y(t:ith1) = a1*sin(theta1(ith1)) + a2*sin(theta1(ith1) + theta2_start_end(t));
    end
    
    for ith2 = 1:length(theta1)
        x(t+2:ith2) = a1*cos(theta1_start_end(t)) + a2*cos(theta2(ith2) + theta1_start_end(t));
        y(t+2:ith2) = a1*sin(theta1_start_end(t)) + a2*sin(theta2(ith2) + theta1_start_end(t));
    end
end

x = x';
y = y';

plot(x(:,1),y(:,1),'k');
hold on
plot(x(:,2),y(:,2),'k');
plot(x(:,3),y(:,3),'k');
plot(x(:,4),y(:,4),'k');
