%% c
A = zeros(10,7);
b = zeros(10,1);

%% d
A = add_joint(A,1,1,2,pi/4);    % Joint 1
A = add_joint(A,2,1,3,0);       % Joint 2
A = add_joint(A,3,2,3,-pi/4);   % Joint 3
A = add_joint(A,4,2,4,0);       % Joint 4
A = add_joint(A,5,3,4,pi/4);    % Joint 5
A = add_joint(A,6,3,5,0);       % Joint 6
A = add_joint(A,7,4,5,-pi/4);   % Joint 1

%% e
b(6,:) = -1000;

%% f
A = A(3:9,:);

%% g
b = b(3:9,:);

%% h
A\b