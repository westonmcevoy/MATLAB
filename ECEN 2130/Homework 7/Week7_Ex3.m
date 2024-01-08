%% a
g = 9.81; m = 30; L = 2.5; mu = 7;
[theta,dtheta] = meshgrid(linspace(-pi,pi,101),linspace(-2*sqrt(g/L),2*sqrt(g/L),101));

%% b
E =  m*g*L*(1-cos(theta))+1/2*m*L^2*dtheta.^2;
contour(theta,dtheta,E,20)
hold on

%% c
contour(theta,dtheta,E,[2*m*g*L 2*m*g*L],'k--')

%% d
[min1, indx1] = min(E);
[min2, indx2] = min(min1);
plot(theta(theta==min2),dtheta(dtheta==min2),'k*')
legend('Part A','Part B','Part C')
set(0,'DefaultLegendAutoUpdate','off')

%% f
w = sqrt(g/L);

u = @(t) 0;

options =odeset('RelTol',1e-3);
[t,x] = ode45(@(t,x) pendulum(x,u(t),m,g,L,mu),[0 60],[.99*pi 0], options);

%% g
hold on
comet(x(:,1),x(:,2),0.99)

%% h 
u = @(t) m*L^2*sin(w*t);

[t,x] = ode45(@(t,x) pendulum(x,u(t),m,g,L,mu),[0 60],[x(end,1) x(end,2)]);

%% e
 function dx = pendulum(x,u,m,g,L,mu)
 
 dx = [x(2)
      -g/L*sin(x(1))-mu/m*norm(x(2))*x(2)+1/(m*L^2)*u];
 end
 
 