clc
clear
%% Exercise 4
x = linspace(0,2*pi,100);   %a
y = sin(x); %b
plot(x,y,'-o')  %c
title('y=sin(x)');
xlabel('x');
ylabel('sin(x)');