clc
clear       
%% Exercise 2
a = [-1 0 1];   %a
b = [1 5 10];   %b
a+b;    %c a+b is a 1x3 matrix, elementwise addition is performed
a+b'  %c a+b' is a 3x3 matrix
a.*b;   %d a.*b is a 1x3 matrix, elementwise multiplication is performed
a.*b'  %d a.*b' is a 3x3 matrix
a*b';   %e a.*b' is a scalar
a'*b;   %e a'*b is a 3x3 matrix
%a*b;    %f errors due to incorrect vector dimensions,(1x3)*(1x3)