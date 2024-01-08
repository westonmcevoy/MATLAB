clc
% Define a as a row vector
a = [0:5:100];
% Display seventh value in a
disp(a(7));
% Display elements 4, 8, 15, and 16 of vector a
disp(a(4)); disp(a(8)); disp(a(15)); disp(a(16));
% Display the first five elements of a
disp(a(1:5));
% Display the first five elements of a in reverse order
disp(a(5:-1:1));
% Use the end operator to display the last five elements of a
disp(a(end-4:end));
% Use the end operator to display the last five elements of a in reverse
% order
disp(a(end:-1:end-4));
% Use find to display all the elements of a that are less than 42
disp(a(find(a<42)));
% Redo with logical indexing
disp(a(a<42));


