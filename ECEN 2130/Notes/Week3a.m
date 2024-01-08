close all

x = linspace(0,5);

y1 = exp(-x);

plot(x,y1)
hold on

y2 = cos(4*x);

plot(x,y2)

figure
plot(x,y1.*y2)