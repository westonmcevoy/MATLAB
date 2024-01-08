clc
clear
close all
x = linspace(0,5)
y1 = exp(-x)
plot(x,y1)
hold on
y2  = cos(4*x)
plot(x,y2)
hold off
plot(x,y1.*y2)

q = linspace(0,500);
PO = 120;
aP = 3e-4;
P = PO-aP*(q.^2)

plot(q,P)

aN = 7e-4;
N = aN*q.^2;
hold on

plot(q,N)

kP = find(P>N)
plot(q(kP),P(kP),':k','Linewidth',2)
q(P-N==min(abs(P-N)))
P(P-N==min(abs(P-N)))

hold off
figure
plot(q,P-N)
hold on
plot(q,abs(P-N))

kO = find((abs(P-N))==min(abs(P-N)))
q2= linspace(q(kO-1),q(kO+1),100)

figure(1);
