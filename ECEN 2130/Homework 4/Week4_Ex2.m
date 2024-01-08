clc
clear
close all

%% a
A = [3  0 0 3 0   0  3
     0 -1 1 0 0   0  0
     0  0 0 0 0 -1/2 0];
plot3(A(1,:),A(2,:),A(3,:),'LineWidth',2)
hold on
grid on
axis equal

%% b 
for phi = linspace(0,pi/2,8)
    Az = Rz(phi)*A;
    plot3(Az(1,:),Az(2,:),Az(3,:),'--b')
    pause(0.3);
end

%% c
for theta = linspace(0,-pi/6,6)
    Azy = Rz(pi/2)*Ry(theta)*A;
    plot3(Azy(1,:),Azy(2,:),Azy(3,:),'--g')
    pause(.3);
end
%% d
for v = linspace(0,pi/4,4)
    Azyx = Rz(pi/2)*Ry(-pi/6)*Rx(v)*A;
    plot3(Azyx(1,:),Azyx(2,:),Azyx(3,:),'--r')
    pause(.3);
end

%% e
Azyx = Rz(pi/2)*Ry(-pi/6)*Rx((pi/4)*v)*A;
plot3(Azyx(1,:),Azyx(2,:),Azyx(3,:),'k','LineWidth',2)

%% f
pause(1);
Axyz = Rx((pi/4)*v)*Ry(-pi/6)*Rz(pi/2)*A;
plot3(Axyz(1,:),Axyz(2,:),Axyz(3,:),'--k','LineWidth',.5)
