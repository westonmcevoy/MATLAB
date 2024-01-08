clear
clc
close all

%% d
help hamiltonian

%% e
N = 5;
H = hamiltonian(1,10,N);

%% f
[V,D] = eig(H);

%% g
V1 = V(:,1);
p =  -2*N:2:2*N;
subplot(3,1,1)
bar(-2*N:2:2*N,V1)

%% h
V2 = V(:,2);
subplot(3,1,2)
bar(-2*N:2:2*N,V2)

V3 = V(:,3);
subplot(3,1,3)
bar(-2*N:2:2*N,V3)


