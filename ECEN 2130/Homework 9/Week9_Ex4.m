close all
clear
clc
%% a
a=3; b=40;
f = @(x) a*x.^2 + b*x;
x = linspace(-20,20);

%% b
plot(x,f(x))

%% c
xmin = fminsearch(f,0);
hold on
plot(xmin,f(xmin),'*r')

%% d
c=200;
g = @(x) f(x)+c*sin(x/2);
hold off
figure(2);
plot(x,g(x));
hold on

%% e
q=-20;
r=20;
for x0 = (r-q)*rand(1,5)+q
    plot(x0,g(x0),'or')
    xm = fminsearch(g,x0);
    plot(xm,g(xm),'*b')
    z = linspace(x0,xm);
    plot(z,g(z),'--k')
end

% The solution doesn't always converge to the global minimum since if the
% guess is closer to a local minimum that is not the global minimum then the
% solution will be that local minimum. The solution is dependent on the
% initial guess.