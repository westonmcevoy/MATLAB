clear
close all
clc

N = [1, 5, 25, 140, 600, 3100];
C = [10, 8, 5, 4, 2.4, 2];


plot(log(C),log(N))

coefficients = polyfit(log(C), log(N), 1);
xFit = linspace(min(log(C)), max(log(C)), 1000);
yFit = polyval(coefficients , xFit);

hold on;
plot(xFit, yFit, 'r')
title("ln[C(t)] vs ln[N(t)/10]");
xlabel("ln[C(t)]");
ylabel("ln[N(t)/10]");

slope = (yFit(1000)-yFit(1))/(xFit(1000)-xFit(1))

figure(2);

Io = 