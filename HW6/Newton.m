
% Problem 2b) 
% Newton Method

% input = Tolerance , start_guess
% output = array of iterates

function x = Newton(TOL,start_guess)
format long e

given_fun = @(a)a - 4*sin(2*a) + 3.245892718783470;

f_prime = @(a) 1 - 8*cos(2*a);

x_init= start_guess; 
delta_x = 100000000;
iter = 0; 
while delta_x >= TOL
    if(abs(given_fun(x_init)) < eps)
      return;
   end
   iter = iter +1;
   
   if(f_prime(x_init) ~= 0)
     x_next = x_init - (given_fun(x_init)/f_prime(x_init));
     x(iter) = x_next;
     delta_x = abs(x_init - x_next);
     x_init = x_next;
     
   else 
       disp('Error')
   end
end
end