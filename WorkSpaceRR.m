clc
clear

l1 = 5;
l2 = 5;
% l3 = 30;

q1_min = 0;
q1_max = 270;
q2_min = 0;
q2_max = 135;
% 1st path: q1 = min, q2 var
% 2nd path: q1 = max, q2 var
% 3rd path: q1 = var, q2 min
% 4th path: q1 = var, q2 max

t1=linspace(q1_min, q1_max, 100);
t2=linspace(q2_min, q2_max, 100);
% 1st path: 
for i = 1:length(t2)
    [firstPathX(i), firstPathY(i)] = dkpm(l1,l2,q1_min,t2(i));
    plot(firstPathX(:),firstPathY(:),'r');
    pause(0.05)
    axis([-10 10 -10 10])
    hold on
end

% 2nd path: 
for i = 1:length(t2)
    secondPathX(i) = l1*cosd(q1_max) + l2*cosd(q1_max + t2(i));
    secondPathY(i) = l1*sind(q1_max) + l2*sind(q1_max + t2(i));
    plot(secondPathX(:),secondPathY(:),'k');
%         pause(0.05)

    hold on
end

% 3rd path: 
for i = 1:length(t1)
    thirdPathX(i) = l1*cosd(t1(i)) + l2*cosd(t1(i) + q2_min);
    thirdPathY(i) = l1*sind(t1(i)) + l2*sind(t1(i) + q2_min);
    plot(thirdPathX(:),thirdPathY(:),'b');
%         pause(0.05)

    hold on
end

% 4th path: 
for i = 1:length(t1)
    fourthPathX(i) = l1*cosd(t1(i)) + l2*cosd(t1(i) + q2_max);
    fourthPathY(i) = l1*sind(t1(i)) + l2*sind(t1(i) + q2_max);
    plot(fourthPathX(:),fourthPathY(:),'y');
%         pause(0.01)

end
figure(1)
grid on
firstPathX = flip(firstPathX);
firstPathY = flip(firstPathY);
fourthPathX = flip(fourthPathX);
fourthPathY = flip(fourthPathY);
area = 0;
for i = 1:length(firstPathX)-1
    area = area + (firstPathX(i+1) + firstPathX(i))*(firstPathY(i+1) - firstPathY(i));
end
for i = 1:length(secondPathX)-1
    area = area + (secondPathX(i+1) + secondPathX(i))*(secondPathY(i+1) - secondPathY(i));
end
for i = 1:length(thirdPathX)-1
    area = area + (thirdPathX(i+1) + thirdPathX(i))*(thirdPathY(i+1) - thirdPathY(i));
end
for i = 1:length(fourthPathX)-1
    area = area + (fourthPathX(i+1) + fourthPathX(i))*(fourthPathY(i+1) - fourthPathY(i));
end
area = area/2