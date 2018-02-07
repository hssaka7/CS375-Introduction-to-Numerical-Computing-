
% Problem 4
close all
clear
clc
format long e
fun1 = @ (x) sin(x);
fun2 = @ (x) abs(x);

x_values = 1:0.00001:1;
n = 1:16;

for i = 1 : length(n)
    for j = 1 : n(i)
        x(j) = cos((2*j+1)*pi/(2*n(i)+2));
    end
    y_actual1 = fun1(x);
    y_actual2 = fun2(x);
    y_inter1 = lagrange(x_values,x,y_actual1,n(i));
    y_inter2 = lagrange(x_values,x,y_actual2,n(i));
    error_1 = abs(y_actual1 - y_inter1);
    error_2 = abs(y_actual2 - y_inter2);
    % calculating maximum error for given n 
    error_fun1(i) = max(error_1);
    error_fun2(i) = max(error_2);
    
end
% tabulating maximum error for each N
format long
T_N = table;
T_N.N = n';
T_N.function1_error = error_fun1';
T_N.function2_error = error_fun2'

% plotting N, to see its behaviour
plot(n,error_fun1,'b')
hold on
plot(n,error_fun2,'r')

xlabel('N')
ylabel('error')
title('N vs error for sin(x) and |x|')


