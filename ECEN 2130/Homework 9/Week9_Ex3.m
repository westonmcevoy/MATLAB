%% a
L = [3 25 4 24 26 6 24];
x0 = [0 -pi/2 0 -pi/2];
th = 4*pi/6;

%% b
x  = fsolve(@(x) mechanism(th,x,L),x0)

%% c
D = [25 25];
draw_mechanism(th,x,L,D)

%% d
axis([-10 60 -10 60])

%% e
for th = linspace(pi/2,13*pi/2,150)
    x = fsolve(@(x) mechanism(th,x,L),x0);
    draw_mechanism(th,x,L,D);
    axis([-10 60 -10 60])
    pause(0.05)
end