% Problem 5

close all
clear 
clc

format long e
x_Newton = Newton(10^(-10),1);
x_true = 0.722734247813416;

% calculating error
for i = 1 : length(x_Newton)
   error_Newton(i) = abs(x_true - x_Newton(i)); 
end

% calculating ratio with r = 1 and 2. 
for i = 1 : length(error_Newton)-1
   ratio_Newton(i) = error_Newton(i+1)/(error_Newton(i)^2); 
   ratio2_Newton(i) = error_Newton(i+1)/(error_Newton(i));
end

ratio_Newton(length(error_Newton)) = NaN;
ratio2_Newton(length(error_Newton)) = NaN;

% creating table
format long
T_N = table;
T_N.x_values = x_Newton';
T_N.error = error_Newton';
T_N.ratio_1 = ratio_Newton'

T_N2 = table;
T_N2.ratio_2 = ratio2_Newton'