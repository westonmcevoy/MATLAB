%% a
P0 = 120;
aP = 3e-4;
aN = 7e-4;

P = @(q) P0-aP*q.^2;
N = @(q) aN*q.^2;

%% b
q = linspace(0,500);

plot(q,P(q),q,N(q))
hold on

%% c
q_eq0 = fsolve(@(q) P(q)-N(q),0);
q_eq1 = fsolve(@(q) P(q)-N(q),1);
q_eqneg = fsolve(@(q) P(q)-N(q),-1);

% The guess that works best is x0 = 1 since the function has a derivative of 0 at x0 = 0
% and x0 = -1 will calculate a minimum that is out of the bounds.

%% d
plot(q_eq0,N(q_eq0),'dk')
plot(q_eq1,N(q_eq1),'dk')
plot(q_eqneg,N(q_eqneg),'dk')
hold off
