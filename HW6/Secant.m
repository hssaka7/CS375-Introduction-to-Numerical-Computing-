
% Problem 2c) 
% Secant Method

% input = Tolerance , first_guess, second_guess
% output = array of iterates

function x = Secant(TOL,start_x,end_x)
 format long e
 iter = 0;
 given_fun = @(a)a - 4*sin(2*a) + 3.245892718783470;
 delta_x = 100000000;

 while delta_x >= TOL
    iter = iter + 1; 
    f_start = given_fun(start_x);
    f_end = given_fun(end_x);
    
    x_next = end_x - (f_end*(start_x - end_x)/(f_start-f_end));
    x(iter) = x_next;
    
    if( abs(given_fun(x_next)) < eps)
        return;
    end
    
    start_x = end_x;
    end_x = x_next;
    delta_x = abs(start_x - end_x);
  end
 
  end