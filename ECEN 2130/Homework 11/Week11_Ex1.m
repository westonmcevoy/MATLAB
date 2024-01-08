clear all
clc
close all
%% a
a=1; w=4*pi; phi=pi/3;

v1 = @(t) (a/2)*exp(i*(w*t+phi));
v2 = @(t) (a/2)*exp(-i*(w*t+phi));
y = @(t) v1(t) + v2(t)

%% b
t=0;
plot([t real(v1(t))], [t imag(v1(t))])
hold on
plot([t real(v2(t))], [t imag(v2(t))])
plot([t real(y(t))], [t imag(y(t))], "k")
hold off

%% c
figure(2);
for t = 0:.01:2
    plot([0 real(v1(t))], [0 imag(v1(t))], "bl")
    hold on
    plot([0 real(v2(t))], [0 imag(v2(t))], "r")
    plot([0 real(y(t))], [0 imag(y(t))], "k")
    pause(.1);
end

%% d
figure(3);
subplot(2,1,1)
plot([0 real(y(t))])
subplot(2,1,2)
plot([0 imag(y(t))])
