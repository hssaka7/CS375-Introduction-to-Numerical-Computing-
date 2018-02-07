% Problem 3b
% comp_trap_int(f,a,b,n)
% Input: f     function
%        a     lower bound
%        b     upper bound
%        n     number of interval
% output: sum   approx sum from composite trapezoid.

function sum = comp_trap_int(f,a,b,n)
   h = (b-a)/n;
   sum = (f(a) + f(b))/2;
   for i = 1:n-1
       temp = a + i*h;    
       sum = sum + f(temp);
   end
   sum = sum * h;
end