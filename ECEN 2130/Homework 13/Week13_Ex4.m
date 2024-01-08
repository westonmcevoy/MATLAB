clc
clear
close all

%% a
R = 100;
C = 10e-5;
L = 2.5;

s = tf('s');
T2 = 1/(L*C*s^2 + R*C*s + 1);

bode(T2)

%% b
ws = 20;
[mag, phase] = bode(T2, ws)

%% c
result = sim("Week13_Sim4.slx")

t = result.tout;
u = result.u;
w = result.w;

figure(2);
plot(t, u, t, w)

%% d
for ws = [200 2000]
    result = sim("Week13_Sim4.slx")
    t = result.tout;
    u = result.u;
    w = result.w;
    
    figure
    plot(t, u, t, w)
end