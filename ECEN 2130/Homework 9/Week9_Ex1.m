%% a
r1 = 11; r2 = 2;
x = @(t) (r1+r2)*cos(t)-r2*cos(t*(r1/(r2+1)));
y = @(t) (r1+r2)*sin(t)-r2*sin(t*(r1/(r2+1)));
t = linspace(0,4*pi,500);
%% b
plot(x(t),y(t))

