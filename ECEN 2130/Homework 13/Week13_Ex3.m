clc
clear
close all

%% a
R = 100;
C = 10e-5;
L = 2.5;

sigma = linspace(-400, 400, 101);
w = linspace(-400, 400, 101);
s = sigma + 1j*w';
T2 = @(s) (L*C*s.^2+R*C*s)./(L*C*s.^2+R*C*s+1);
surf(sigma, w, db(abs(T2(s))));
xlabel('\sigma')
ylabel('\omega')
zlabel('dB(|T(s)|)')

%% b
figure(2);
w = logspace(-2, 4);
s = sigma + 1j*w';
surf(sigma,w,db(abs(T2(s))))
set(gca, 'YScale', 'log');
xlabel('\sigma')
ylabel('\omega')
zlabel('dB(|T(s)|)')

sigma = 0 * w;
s = sigma + 1j*w';

hold on
plot3(sigma,w,db(abs(T2(s))), 'r', 'LineWidth', 4)
hold off

%% c
figure(3);
s = tf('s');
T = (L*C*s^2+R*C*s)/(L*C*s^2+R*C*s+1);

pzmap(T)
grid on
axis equal

%% d
figure(4);
bode(T)