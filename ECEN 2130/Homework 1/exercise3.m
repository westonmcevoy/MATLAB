clc 
clear
%% Exercise 3
help linspace   %a
doc linspace    %b
%c colon(control the stepsize instead of number of steps) and logspace(same
%as linspace  but logarithmically spaced steps rather than linearly)
v = linspace(0,1,10)    %d
w = 0:.1:1  %e different because it has more stepsizes of lesser magnitude, stepsize is preferenced but not number of steps