
%% Problem 6
%% a) my_mean
% code
function [value,error] = my_mean(fun,a,b,N) 
  h = (b-a)/N;
  %x = zeros(1,N);
  for i = 1:N
    x(1,i) = a +(i -1)*h;
  end
  y = fun(x);
 value = sum(y)/N;
 error = abs(value - (1/exp(1)));
 