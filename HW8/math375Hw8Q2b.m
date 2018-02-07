
% Problem 2b
close all
clear 
clc

fun = @(x) 1 ./ (1 + 25 .* x.^2);
n = 11;
% making equispaced intervals
t = linspace(-1,1,n+1);
y = fun(t);
z = spline3_coeff(t,y);
x = -1:0.000001:1;

% evaluating spline by calling eval_spine function
for i = 1:length(x)
   splineapprox(i) = eval_spine(x(i),t,y,z);
end
% plotting original function and spline

plot(x,splineapprox,'r')
hold on
plot(x,fun(x),'k')
xlabel('x-values')
ylabel('f(x)')
legend('approx by spline','real f(x)','location','northwest')