% Problem 3

close all
clear 
clc

n =50; 
fun = @ (x) 1./(1 + 25 .* x.^ 2);

% calculating Chebyshev points 
for i = 1 : n
   x(i) = cos((2*i+1)*pi/(2*n+2));
   y(i) = fun(x(i));
end

x_values = -1:0.0001:1;

% plotting graph
plot(x_values,fun(x_values),'k')
hold on
plot(x,lagrange(x,x,y,n),'o')
hold on

% graph is ploted after calling Lagrange function for those
% Chebyshev Points
plot(x_values,lagrange(x_values,x,y,n),'r')
xlabel('x')
ylabel('f(x)')
title('n = 115')
axis([-1 1 -1 2])
   