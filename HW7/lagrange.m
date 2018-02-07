% lagrange method
% This function calculates the Lagrange Interpolation.
% and returns the y values of interpolation for given 
% x values
%
% Input parameters: x_values , this are the x_values for
%                   which this function will return y_values.
%                   
%                   x and y, these are the points for which 
%                   interpolation is done. 
%
%                   n: number of points for interpolation
%
% Output: y_value of the given x_values , after the interpolation. 



function y_interpolate = lagrange(x_values,x,y,n)

L = ones(n,length(x_values));

% Calculating lgrange multipliers
for i = 1: n
    for j = 1:n
       if(i ~= j)
           L(i,:) = L(i,:).* (x_values-x(j))/(x(i) - x(j)); 
       end
    end
end
y_temp = 0;

% Claculating y values. 
for j = 1:n
    y_temp = y_temp + y(j)* L(j,:);
end  
    y_interpolate = y_temp;
end