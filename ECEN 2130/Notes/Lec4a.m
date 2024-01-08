clc
close all
clear

A = [3 0 0 3 0   0  3
    0 -1 1 0 0   0  0
    0  0 0 0 0 -1/2 0];

plot3(A(1,:),A(2,:),A(3,:))
axis equal
hold on

al = linspace(0,pi/4,6)

Ax = Rx(al)*A
plot3(Ax(1,:),Ax(2,:),Ax(3,:),'r');
pause(0.3)

hold off

figure(2)
plot3(A(1,:),A(2,:),A(3,:))
axis equal
hold on

Ax = Rx(al)*A
Ay = Ry(al)*A
Az = Rz(al)*A

plot3(Ax(1,:),Ax(2,:),Ax(3,:),'r');
plot3(Ay(1,:),Ay(2,:),Ay(3,:),'r');
plot3(Az(1,:),Az(2,:),Az(3,:),'r');