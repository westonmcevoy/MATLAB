function draw_mechanism(th,x,L,D)
p1 = [0;0];
p2 = p1 + L(1)*[cos(th);  sin(th) ];
p3 = p2 + L(2)*[cos(x(1)); sin(x(1))];
p4 = p3 - L(3)*[cos(x(2)); sin(x(2))];
p5 = p3 + L(5)*[cos(x(3)); sin(x(3))];
p6 = p5 - L(6)*[cos(x(4)); sin(x(4))];

P = [p1 p2 p3 p4 p3 p5 p6];
plot(P(1,:),P(2,:),'-*b')
hold on

r2 = p4 - D(1)*[cos(x(2)); sin(x(2))];
s2 = p6 - D(2)*[cos(x(4)); sin(x(4))];
R = [p4 r2];
S = [p6 s2];
plot(R(1,:),R(2,:),'k')
plot(S(1,:),S(2,:),'k')
hold off
end

