function [t,X] = f_Euler(A,XO,dT,T)
[r1,c1] = size(A);
[r2,c2] = size(XO);
[r3,c3] = size(dT);
[r4,c4] = size(T);
if(r1 ~= c1)
    error("error");
end
if((c2 ~= 1) || (r2 ~= r1))
    error("error");
end
if((r3 ~= 1) || (c3 ~= 1))
    error("error");
end
if((r4 ~= 1) || (c4 ~= 1))
    error("error");
end

N = T/dT;
if N ~= floor(N)
    N = floor(N);
    warning("N rounded down to nearest integer for each value");
end
t = 0:dT:T; 

I = eye(length(A));
Ko = eye(N);
p = ones(1,N-1);
K1 = diag(p,-1);

D = kron(Ko,I)-kron(K1,(I+(dT*A)));
e = zeros(size(D,1),1);
e(1:length(XO)) = (I + dT*A)*XO;
X = D\e;
X = [XO reshape(X,[length(XO),N])];
end

