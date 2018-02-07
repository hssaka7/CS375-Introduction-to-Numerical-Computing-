% Problem 1b)

% interp_monomial function
% this function returns the cofficient of the monomial
% interpolation.
%
% Input parameters : x,y     These are the x and y values
%                    for which interpolation is performed.
% Output : vector of coffecient. 

function c = interp_monomials(x,y)

n = length(y);

% constructing V Matrix
for i = 1:n
   for j = 1 : n
       V(i,j) = x(i)^(j-1);
   end
end
   condition_num = cond(V)
   c = V\y';
end