

% 2nd part

% Conjugate Gradient  
function x = my_cg(A,b,tot_it)

%Inputs:
%A: Matrix
%b: Vector
%tot_it: Total number of iterations
%Output:
%:x The solution after tot_it

k = 0;
x = zeros(1,length(b))';
r = b - A*x;
d = r'*r;

while((sqrt(d) > eps*sqrt(b'*b)) && (k < tot_it))
   k = k + 1;
   if k == 1
       p =r;
   else 
       p = r + (d/d_old)*p;
   end
   
   w = A*p;
   alpha = d/(p'*w);
   x =x + alpha*p;
   r = r -alpha*w;
   d_old = d;
   d = r'*r;
    
end
x =x';
end