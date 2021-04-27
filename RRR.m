function [] = RRR()
clc
l1 = input('Enter Link 1''s length: ');
l2 = input('Enter Link 2''s length: ');
l3 = input('Enter Link 3''s length: ');
clc
while 1
fprintf('Choose your command\n')
fprintf('1.DKPM\n2.IKPM\n3.Working Area\n4.Plot working area\n5.Robot animation\n6.Return to Main menu\n')
command = input('Enter your command: ');
if command == 1
    [x, y, phi] = DKPM_RRR(l1, l2, l3);
elseif command == 2
    IKPM_RRR(l1, l2, phi);
elseif command == 3
    WA_RRR();
    
elseif command == 4
    PWA_RRR();

elseif command == 5
    RA_RRR();
    
elseif command == 6
    clc
    break;
else 
    fprintf('\n\n\n\n\n*****************************\nIncorrect input\nPlease enter a command between 1-4 inclusive\n*****************************\n\n\n\n\n')
end
end
end