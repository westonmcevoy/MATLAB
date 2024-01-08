clear
close all
clc
% Define x as a vector of 100 evenly spaced points between -1 and 1
x = linspace(-1,1)
% Define vector f
k = 4;
f = exp(-4*x.^2)
% Compute diff g
g = diff(f)
plot(x(1:length(x)-1),g)
title('g(x) vs x');
xlabel('x');
ylabel('g(x)');
hold on
% Use max min and logical indexing to find x values of mins and maxs
[~,x1] = min(g)
[~,x2] = max(g)
% plot red stars on maxs and mins
plot(x(x1),g(x1),'*r');
plot(x(x2),g(x2),'*r');