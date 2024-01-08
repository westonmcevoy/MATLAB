clear
clc
close all
%% a
R = 100;
C = 10e-5;
L = 2.5;

s = tf('s');
T = 1/(L*C*s^2+R*C*s+1);

%% b
pzmap(T)
grid on
axis equal
[P,Z] = pzmap(T)

%% c
figure(2);
impulse(T);
figure(3);
step(T)
figure(4);
bode(T)
grid on

%% d
w = 1/sqrt(L*C);
zeta = R/(2*w*L);
[mag,phase] = bode(T,w)
check = 1/(2*zeta)

%% e
w = 200;

figure(5);
for zeta = .1:.1:1
    T = w^2/(s^2+2*zeta*w*s+w^2);
    pzmap(T);
    grid on
    hold on
    pause(0.1)
end
figure(6);
for zeta = .1:.1:1
    T = w^2/(s^2+2*zeta*w*s+w^2);
    step(T);    % no clue why this is erroring
    grid on
    hold on
    pause(0.1)
end
figure(7);
for zeta = .1:.1:1
    T = w^2/(s^2+2*zeta*w*s+w^2);
    bode(T);    % no clue why this is erroring
    grid on
    hold on
    pause(0.1)
end

%% f
zeta = .2;

figure(8);
for w = 20:20:400
    T = w^2/(s^2+2*zeta*w*s+w^2);
    pzmap(T);
    axis equal
    grid on
    hold on
    pause(0.1)
end
figure(9);
for w = 20:20:400
    T = w^2/(s^2+2*zeta*w*s+w^2);
    step(T);
    grid on
    hold on
    pause(0.1)
end
figure(10);
for w = 20:20:400
    T = w^2/(s^2+2*zeta*w*s+w^2);
    bode(T);
    grid on
    hold on
    pause(0.1)
end

