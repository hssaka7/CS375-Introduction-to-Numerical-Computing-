% Problem 4c
% comp_gauss_quad(f,a,b) function
% Input parameter: f    function
%                  a    lowerbound
%                  b    upperbound
% Output: sum2     approximate sum
function sum2= comp_gauss_quad(f,a,b,n)
 
   x = linspace(a,b,n+1);
   sum2 = 0;
   for i = 1:length(x)-1
      sum2 = sum2 + gauss_quad_three_pts(f,x(i),x(i+1));
   end
end