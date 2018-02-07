
%% b) my_sin Function

% input parameter = x(angle) ,n(number of terms of taylor series)
% output parameter = y , approx value of sin x

function y = my_sin(x,n)
tot = 0;
for k = 0:n % runnig loop form 0 to n number of times
    % evaluating a nth term of a series  
   val_n = (-1)^k*(x).^(2*k+1)./(factorial(2*k+1));
   tot = tot + val_n; % adding nth term to existing total
end 
y = tot; %assigning value of y, which is sum upto nth term.  
end