clc 
clear
fprintf('Program started successfully!\n')
while 1
fprintf('Choose your command\n')
fprintf('1.RRR\n2.Exit Program\n')
command = input('Enter your command: ');
if command == 1
    RRR();
elseif command == 2
    clc
    fprintf('Program terminated successfully\n')
    break;    
else 
    fprintf('Incorrect input\nPlease enter a command between 1-4 inclusive')
end
end