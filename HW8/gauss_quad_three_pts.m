
% Problem 4b
% gauss_quad_three_pts(f,a,b) function
% Input parameter: f    function
%                  a    lowerbound
%                  b    upperbound
% Output: sum1  approximate sum for n = 3
function sum1 = gauss_quad_three_pts(f,a,b)
   x =[-(3/5)^0.5, 0, (3/5)^0.5];
   w = [5/9 8/9 5/9];
   temp1 = (b-a)./ 2*w;
   temp2 = (b-a)./ 2*x + (b+a)/2;
   f_values = f(temp2);
   sum1 = sum(temp1.*f_values);
end


