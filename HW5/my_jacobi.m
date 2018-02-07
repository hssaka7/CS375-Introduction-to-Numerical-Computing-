
%% 1
% part 1
% Jacobi 
function x = my_jacobi(A,b, tot_it)

%Inputs:
%A: Matrix
%b: Vector
%tot_it: Number of iterations
%Output:
%:x The solution after tot_it iterations/sweeps

n = size(A); 

x = zeros(1,length(b));

for k = 1:tot_it
  y = x;
  for i = 1:n
    sum = b(i);
    diag = A(i,i);
   for j = 1:n
      if j ~= i
        sum = sum - A(i,j)*y(j);
      end
    end
    x(i) = sum/diag;
  end
  % breaking loop after getting enough precision
  if abs(y - x) < eps 
      break;
  end
end
end