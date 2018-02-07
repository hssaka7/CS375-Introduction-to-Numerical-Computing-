
% Problem 2b)
clear 
close all
clc

A = [1 -3 3;2 -2 2; 2 0 0];
x1 = [1 1 1]';
x2 = [1 -1 1]';
tol = 10^-3;

%i)
[eval1,evec1] = power_method(A,x1,tol)

%ii)
[eval2,evec2] = power_method(A,x2,tol)
