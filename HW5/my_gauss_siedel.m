%% 3
% part 1 
% Gauss-Siedel
function x = my_gauss_siedel(A,b,tot_it)

%Inputs:
%A: Matrix
%b: Vector
%tot_it: Total number of iterations

%Output:
%:x The solution after tot_it iterations/sweeps
n = size(A); 

x = zeros(1,length(b));

for k = 1:tot_it
  y = x;
  for i = 1:n
    sum = b(i);
    diag = A(i,i);
   for j = 1 : i-1
       sum = sum - A(i,j)*x(j);
   end
   for j = i +1 :n
       sum = sum - A(i,j)*x(j);
   end
    x(i) = sum/diag;
  end
   if abs(y - x) < eps 
      break;
   end
  
end
end

