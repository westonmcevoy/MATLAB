close all
clear
clc
%% a
syms y(t) dy z w
myode = diff(y,2) + 2*z*w*diff(y) + w^2*y == 0;     %a defining Differential Equation
dy = diff(y);
mycond = [y(0)==10 dy(0)==0];        %Inputting initial values

y = dsolve(myode,mycond)
y = subs(y,[z w],[.5 1]);
dy = diff(y)
figure(1)
fplot(y,[0 20])
xlabel('t')
ylabel('y')
title('y vs t')
hold on

%% b
w = 1;
z = .5;
A = [ 0 1; -w^2 -2*z*w];
XO = [10; 0];
dT = [.01 .1 .5 1 2];
T = 20;

fplot(y,[0 20])

[t,X] = f_Euler(A,XO,dT(1),T);      % dT=.01
plot(t,X(1,:))

[t,X] = f_Euler(A,XO,dT(2),T);      % dT=.1
plot(t,X(1,:))

[t,X] = f_Euler(A,XO,dT(3),T);      % dT=.5
plot(t,X(1,:))

[t,X] = f_Euler(A,XO,dT(4),T);      % dT=1
plot(t,X(1,:))

% A larger discretization step reduces accuracy

legend('Analytic','.01','.1','.5','1');
hold off
figure(2)
xlabel('t')
ylabel('y')
title('y vs t')

[t,X] = f_Euler(A,XO,dT(5),T);      % dT=2
plot(t,X(1,:))

% For dT = 2, the approximation is esepecially inaccurate

%% c

figure(3)
hold on
xlabel('t')
ylabel('y')
title('y vs t')

fplot(y,[0 20])

[t,X] = b_Euler(A,XO,dT(1),T);      % dT=.01
plot(t,X(1,:))

[t,X] = b_Euler(A,XO,dT(2),T);      % dT=.1
plot(t,X(1,:))

[t,X] = b_Euler(A,XO,dT(3),T);      % dT=.5
plot(t,X(1,:))

[t,X] = b_Euler(A,XO,dT(4),T);      % dT=1
plot(t,X(1,:))

% A larger discretization step reduces accuracy

legend('Analytic','.01','.1','.5','1');
hold off
figure(4)

[t,X] = b_Euler(A,XO,dT(5),T);      % dT=2
plot(t,X(1,:))

% For dT = 2, the approximation is esepecially inaccurate

%% d

figure(5)
hold on
xlabel('t')
ylabel('y')
title('y vs t')

fplot(y,[0 20])

[t,X] = trapz_rule(A,XO,dT(1),T);      % dT=.01
plot(t,X(1,:))

[t,X] = trapz_rule(A,XO,dT(2),T);      % dT=.1
plot(t,X(1,:))

[t,X] = trapz_rule(A,XO,dT(3),T);      % dT=.5
plot(t,X(1,:))

[t,X] = trapz_rule(A,XO,dT(4),T);      % dT=1
plot(t,X(1,:))

% A larger discretization step reduces accuracy

legend('Analytic','.01','.1','.5','1');
hold off
figure(6)

[t,X] = trapz_rule(A,XO,dT(5),T);      % dT=2
plot(t,X(1,:))

% For dT = 2, the approximation is esepecially inaccurate

%% e

figure(7)
subplot(2,1,1)
hold on
xlabel('t')
ylabel('y')
title('y vs t')

dT = .2;

fplot(y,[0 20])
[t,X] = f_Euler(A,XO,dT,T);      
plot(t,X(1,:))
[t,X] = b_Euler(A,XO,dT,T);      
plot(t,X(1,:))
[t,X] = trapz_rule(A,XO,dT,T);      
plot(t,X(1,:))

legend('Analytic','Forward','Backward','Trapezoidal');
hold off
subplot(2,1,2)
hold on
xlabel('t')
ylabel("y'")
title("y' vs t")

fplot(dy,[0 20])
[t,X] = f_Euler(A,XO,dT,T);      
plot(t,X(2,:))
[t,X] = b_Euler(A,XO,dT,T);      
plot(t,X(2,:))
[t,X] = trapz_rule(A,XO,dT,T);      
plot(t,X(2,:))
legend('Analytic','Forward','Backward','Trapezoidal');