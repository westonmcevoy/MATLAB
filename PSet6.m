clear
close all

Vd = linspace(0,8);
Rp = 10; Rs = .001; Io = 5e-11;
q = 1.6e-19;

%% A
I = @(Vd,Isc) Isc-Io*(exp(Vd./40)-1)-Vd./Rp;
V = @(Vd,Isc) Vd-I(Vd,Isc)*Rs;

subplot(1,2,1);
for Isc = linspace(0,6,6)
        plot(V(Vd,Isc),I(Vd,Isc));
    hold on;
end

xlabel("V(Vd) in Volts");
ylabel("I(Vd) in Amps");
title("Solar Cell IV Characteristic");
axis([0 8 -1 6])
legend("0","1.2","2.4","3.6","4.8","6")


%% B
subplot(1,2,2)
for Isc = linspace(0,6,6)
    plot(V(Vd,Isc),I(Vd,Isc).*V(Vd,Isc));
    hold on
end

xlabel("Volts");
ylabel("Power in Watts");
title("Solar Cell Power");
axis([0 8 0 40])
legend("0","1.2","2.4","3.6","4.8","6")

%% C
for Isc = linspace(0,6,6)
    A = max(I(Vd,Isc).*V(Vd,Isc))
end