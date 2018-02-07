
% Problem 2
close all
clear
clc

n = 11;
h = 2/n;
fun = @ (x) 1./(1 + 25 .* x.^ 2);

% generating points to interpolate
for nv = 1 : n
    x(nv) = -1+nv*h;
    y(nv)= fun(x(nv));
end
x_values = -1 : 0.0001 : 1;
 
plot(x_values,fun(x_values))
hold on
plot(x_values,lagrange(x_values,x,y,n))
plot(x,fun(x),'o')
xlabel('x')
ylabel('f(x)')
title('for n = 11')
axis([-1 1 -2 2])