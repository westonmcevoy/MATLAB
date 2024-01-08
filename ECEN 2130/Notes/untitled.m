function [Ho] = hamiltonian(Er,al,N)
h = [N:-1:0,1:1:N].^2;
e = ones(2*N,1).*-al/4;
Ho = diag(h)+diag(e,-1)+diag(e,1);
Ho = Er.*H;
ends
