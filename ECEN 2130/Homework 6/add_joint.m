function A = add_joint(A,f,p1,p2,th)
A(2*p1-1:2*p1,f) = [-cos(th); -sin(th)];
A(((2*p2)-1):2*p2,f) = [cos(th); sin(th)];
end

