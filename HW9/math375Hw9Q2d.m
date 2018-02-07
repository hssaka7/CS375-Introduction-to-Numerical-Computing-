% Problem  3d)

clear 
close all
clc

A = [-3 -2;4 3];
x = [1 1]';
tol = 10^-3;

[eval_pow,evec_pow] = power_method(A,x,tol)
m = A* evec_pow

e = eig(A)
