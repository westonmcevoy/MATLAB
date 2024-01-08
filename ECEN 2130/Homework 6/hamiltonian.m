function [Ho] = hamiltonian(Er,al,N)
% Takes in Er, al, and N. Creates a row vector h of length 2N+1 with values
% N^2. Creates a row vector e of length 2N with values -al/4. Uses diag to
% create matrix Ho with middle diagonal h and adjacent diagonals e. Ho is 
% outputted
h = [N:-1:0,1:1:N].^2;      
e = ones(2*N,1).*-al/4;
Ho = diag(h)+diag(e,-1)+diag(e,1);
Ho = Ho.*Er;
end
