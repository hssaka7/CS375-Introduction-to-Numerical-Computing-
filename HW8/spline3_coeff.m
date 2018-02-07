% Problem 2b
% spline3_coff(t,y) function
% Input: t - knot vector 
%        y - f value for individual t,vector
%
% output: z vector - coffecient of spline
function z = spline3_coeff(t,y)
n = length(t);
% calculating h and b
for i = 1:length(t)-1
    h(i) = t(i+1) - t(i);
    b(i) = (y(i+1)-y(i))/ h(i);
end
% setting initial value for u and v
u(1) = 2 * (h(1) + h(2));
v(1) = 6 * (b(2) - b(1));
% calculating u and v
for j = 2:length(b)-1
   u(j) = 2 * (h(j+1) + h(j)) - h(j)^2/u(j-1); 
   v(j) = 6 * (b(j+1) - b(j)) - h(j)*v(j-1)/u(j-1);
end

% setting initial and final value for z to 0.
z(n) = 0;
z(1) = 0;
% finding z vector 0
for k = n-1:-1:2
    z(k)= (v(k-1)-h(k)*z(k+1))/u(k-1);
end

