clear
clc
close all

%% a
w=2*pi; dt=.1;

v = @(t) .5*exp(i*(w*t));
w = @(t) .5*exp(i*(w*(t-dt)));
c = @(t) v(linspace(t-dt,t,20));

%% b
t=0;
plot([t real(v(t))], [t imag(v(t))], "k")
hold on
plot([t real(w(t))], [t imag(w(t))], "--k")
plot([t real(c(t))], [t imag(c(t))], "*k")
axis([-1 1 -1 1]);
hold off

%% c
figure(2);
for t = 0:dt:2
    plot([0 real(v(t))], [0 imag(v(t))], "k")
    hold on
    plot([0 real(w(t))], [0 imag(w(t))], "--k")
    plot(real(c(t)), imag(c(t)), "*k")
    axis([-1 1 -1 1]);
    pause(.01);
    hold off
end

%% d
figure(3);
for w = [2*pi 3*pi 4*pi 5*pi 10*pi 15*pi 16*pi 17*pi 18*pi 20*pi]
    v = @(t) .5*exp(i*(w*t));
    w = @(t) .5*exp(i*(w*(t-dt)));
    c = @(t) v(linspace(t-dt,t,20));
    for t = 0:dt:2
        plot([0 real(v(t))], [0 imag(v(t))], "k")
        hold on
        plot([0 real(w(t))], [0 imag(w(t))], "--k")
        plot(real(c(t)), imag(c(t)), "*k")
        axis([-1 1 -1 1]);
        pause(.01);
        hold off
    end
end

%% e
w=16*pi; dt=.1;
v1 = @(t) cos(w*t);
v2 = @(t) cos(w*t-2*pi*t/dt);
t1 = 0:dt/100:2;
t2 = 0:dt:2;

figure(4);
plot(t1, v1(t1), "--k")
hold on
plot(t1, v2(t1), "k")
plot(t2, v1(t2), "obl")
plot(t2, v2(t2), "*r")



