% Problem 1
close all
clear 
clc

given_fun = @(a)a - 4*sin(2*a) + 3.245892718783470;
x = -10:0.01:10;
y = zeros(1,length(x));
% drawing the x-axis
plot(x,y,'k')
hold on 

% drawing the function
plot(x, given_fun(x),'r')
hold on
ylim([-10 10])
xlabel('x')
ylabel('f(x)')
title('f(x) = x - 4sin(2x) + 3.245892718783470')

% There are 6 zero crossing points.
