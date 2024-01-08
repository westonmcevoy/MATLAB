%% a
sigma = linspace(-2000,2000);
w = linspace(-2000,2000);
s = sigma + 1j*w';

%% b
R = 100;
C = 10e-6;
L = 2.5;

T = @(s) 1./(L*C*s.^2+R*C*s+1);
surf(sigma,w,abs(T(s)))
xlabel('\sigma')
ylabel('\omega')
zlabel('|T(s)|')

%% c
figure(2);
surf(sigma,w,db(abs(T(s))))
xlabel('\sigma')
ylabel('\omega')
zlabel('|T(s)|')

%% d
w = logspace(-2, 4);
s = sigma + 1j*w';
figure(3);
surf(sigma,w,db(abs(T(s))))
xlabel('\sigma')
ylabel('\omega')
zlabel('|T(s)|')

%% e
figure(4);
surf(sigma,w,db(abs(T(s))))
set(gca,'YScale','log')
xlabel('\sigma')
ylabel('\omega')
zlabel('|T(s)|')

%% f
hold on
sigma = 0 * w;
s = sigma + 1j*w';
plot3(sigma,w,db(abs(T(s))),'r','LineWidth',4)




