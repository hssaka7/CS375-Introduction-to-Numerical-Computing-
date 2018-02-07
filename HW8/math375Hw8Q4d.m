% Problem 4d
close all
clear 
clc
format long
n = [4 8 16 32];
fun = @ (x) 2.*x.*cos(x);
a = 1;
b = 3;
realSum = integral(fun,1,3);
for i = 1 : length(n)
   approxSum(i) = comp_gauss_quad(fun,a,b,n(i));
   error(i) = abs(realSum - approxSum(i));
end
% Tabulating n, sum and error
Gauss_Quadrature = table;
Gauss_Quadrature.N = n';
Gauss_Quadrature.SUM = approxSum';
Gauss_Quadrature.ERROR = error'




