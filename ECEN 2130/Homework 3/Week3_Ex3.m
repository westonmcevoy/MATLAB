clear
close all
clc
% Define q as a vector of 100 evenly spaced points between 0 and 500
q = linspace(0,500);
% Define the P vector
p0 = 120;
ap = 3e-4;
p = p0-ap*(q.^2);
% Define the n vector
aN = 7e-4;
N = aN*(q.^2);
% Plot on same graph
plot(q,p)
hold on
plot(q,N)
% Use abs to generate the array |p-N|
e = abs(p-N);
[~,x] = min(e);
plot(q(x),p(x),'*k')
% Generate vector q2
q2 = linspace(q(x-1),q(x+1),200)
% More accurate intersect
plot(q2(x),p(x),'xk')






