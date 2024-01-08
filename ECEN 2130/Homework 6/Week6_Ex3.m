close all
clc
clear
%% Verifying correct matrix given arbitrary XO
f_Euler(-4,1,2,8)

%% Verifying correct plot
A = -4;
XO = 5;
dT = .2;
T = 1.1;
[t,X] = f_Euler(A,XO,dT,T);
plot(t,X)

