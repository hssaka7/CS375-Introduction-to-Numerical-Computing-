% Problem 3c

close all
clear 
clc
fun = @(x) 2.*x.*cos(x);
a = 1;
b = 3;
n = [4 8 16 32];
realSum = integral(fun,a,b);

% Calculating sum and error for composite trapezoid
for i = 1 : length(n)
   sum(i) = comp_trap_int(fun,a,b,n(i)); 
   error(i) = abs(realSum - sum(i));
end
p(1) = NaN;
% calculaing the order of convergence
for j = 2:length(n)
   h_n = (b -a)/n(j);
   h_n_minus1 = (b - a)/n(j-1);
   temp1 = log10(error(j)/error(j-1));
   temp2 = log10(h_n/h_n_minus1);
   p(j) = round(temp1/temp2,2);
end 
% Tabulating n,sum,error and order. 
Trapezoid = table;
Trapezoid.N = n';
Trapezoid.SUM = sum';
Trapezoid.ERROR = error';
Trapezoid.p = p'

