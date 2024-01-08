clc
% Copy graph
x = ones(600,1);                        % Creating column vector of ones size 600
x(100:200) = zeros(101,1);              % Replacing rows 100 through 200 with value 0
x(200:400) = [-1:1/100:1];              % Replacing rows 200 through 400 with values from -1 to 1 with stepsize 2/200
x(400:600) = cos([0:pi/100:2*pi]);      % Replacing rows 400 through 600 with a period of cos
plot(x)
% Use length to generate a column vector t
t = ones(length(x),1);
t = [0:.01:(600*.01)];
% Define y(t) as a sinusoid with angular frequency w=10*pi
w = 10*pi
y = ones(length(t),1);
y(:,1) = sin(w*t)