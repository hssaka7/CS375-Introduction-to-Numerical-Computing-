% Problem 3
close all
clear
clc
format long e 
x_bisection = bisection(10^(-10), -4.8, -4.2);
x_Newton = Newton(10^(-10),-4.2);
x_Secant = Secant(10^(-10), -4.8, -4.2);
% For Bisection Method; 
 total_iteration_bisection = length(x_bisection)
 root_bisection = x_bisection(total_iteration_bisection)
 
 % For Newton Method; 
 total_iteration_Newton = length(x_Newton)
 root_Newton = x_Newton(total_iteration_Newton)
 
 % For Secant Method; 
 total_iteration_Secant = length(x_Secant)
 root_Secant = x_Secant(total_iteration_Secant)
 
 