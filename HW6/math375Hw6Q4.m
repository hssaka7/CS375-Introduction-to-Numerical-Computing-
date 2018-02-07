% Problem 4
close all
clc
clear 
format long e
x_Bisection = bisection(10^(-10), -4.8, -4.2);
x_Newton = Newton(10^(-10),-4.2);
x_Secant = Secant(10^(-10), -4.8, -4.2);

% calculating true roots 
given_fun = @(a)a - 4*sin(2*a) + 3.245892718783470;
interval = [-4.8 -4.2];
x_true = fzero(given_fun,interval);

% For Bisection Method
x_init = -4.8;
x_final = -4.2;

% computing error
for i = 1 : length(x_Bisection)
   
    if (x_init*x_Bisection(i)<0)
        x_final = x_Bisection(i);
    else
        x_init = x_Bisection(i);
    end
    
    error_Bisection(i) = abs(x_final-x_init)/2;
end

% computing Ratio
for i = 1 : length(x_Bisection)-1
    ratio_Bisection(i) = error_Bisection(i+1)/error_Bisection(i);
end
ratio_Bisection(length(error_Bisection)) = NaN;


% creating table
format long
disp('Table for Bisection Method')
T_B = table;
T_B.x_value = x_Bisection';
T_B.error = error_Bisection';
T_B.ratio = ratio_Bisection'


% For Newton Method. 

% computing error
format long e
for i = 1 : length(x_Newton)
   error_Newton(i) = abs(x_true - x_Newton(i)); 
end

% computing ratio
for i = 1 : length(error_Newton)-1
   ratio_Newton(i) = error_Newton(i+1)/(error_Newton(i)^2); 
end
ratio_Newton(length(error_Newton)) = NaN;

% creating table
format long
disp('Table for Newton Method')
T_N = table;
T_N.x_value = x_Newton';
T_N.error = error_Newton';
T_N.ratio = ratio_Newton'


% For Secant Method. 

% computing error
format long e
for i = 1 : length(x_Secant)
   error_Secant(i) = abs(x_true - x_Secant(i)); 
end

% computing ratio
r_sec = ((1 + sqrt(5))/2);
for i = 1 : length(error_Secant)-1
   ratio_Secant(i) = error_Secant(i+1)/(error_Secant(i)^r_sec); 
end
ratio_Secant(length(error_Secant)) = NaN;

% creating table
format long
disp('Table for Secant Method')
T_S= table;
T_S.x_value = x_Secant';
T_S.error = error_Secant';
T_S.ratio = ratio_Secant'
