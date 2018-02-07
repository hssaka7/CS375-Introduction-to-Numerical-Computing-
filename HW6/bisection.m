
% Problem 2a) 
% Bisection Method

% input = Tolerance , first_guess, second_guess
% output = array of iterates
function x = bisection(TOL,start_x,end_x)

format long e
iter = 0;
given_fun = @(a)a - 4*sin(2*a) + 3.245892718783470;
delta_x = abs(start_x - end_x)/2;

while delta_x >= TOL
    iter = iter + 1; 
    f_start = given_fun(start_x);
    f_end = given_fun(end_x);
    mid_x = (start_x + end_x)/2;
    f_mid = given_fun(mid_x);
    
    if(abs(f_mid)< eps)
        return;
    end
    
    x(iter) = mid_x;
   
    if(f_mid * f_start < 0)
       end_x = mid_x;
    else
       start_x = mid_x;
    end
    delta_x = abs(start_x - end_x)/2;
    
end
end