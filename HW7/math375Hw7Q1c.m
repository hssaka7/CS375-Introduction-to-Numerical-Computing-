% Problem 1c)

close all
clear 
clc

% 950  997 998  999  
n = 115;
h = 2./n;

fun = @ (x) 1./(1 + 25 .* x.^ 2);

% calculating x and y values

for i = 1 : n
    x(i) = -1 + i * h; % xvalues for which interpolation is done. 
end
y = fun(x);

coff_a = interp_monomials(x,y);

% fliping the coffecient vector before evaluating the y values from 
% interpolation. Because, the coffecient vector we evaluated above is
% in ascending order. But, we need coffecient vector in descending 
% order for using polyval function. 
approx_y = polyval(flipud(coff_a),x); 


x_plot = -1:0.001:1; % x values for plotting the graph.
y_original=fun(x_plot); % original y values from Runge's function.
y_monomial=polyval(flipud(coff_a),x_plot);%y from monomial interpolation.

% ploting the points for x and y where interpolation is done as a circle.  
plot(x,fun(x),'o')
hold on

% ploting grap for monomial interpolation
plot(x_plot,y_monomial,'r')
hold on

%ploting original function
plot(x_plot,y_original,'b')

% detemining the axes length.
axis([-1 1 -2 2])

xlabel('x')
ylabel('f(x)')
title('for n = 22')
%legend('interpolation points','interpolation','original','location','southwest')
