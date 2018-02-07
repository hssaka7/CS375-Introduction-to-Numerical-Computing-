
%% 2 a) Gaussian Scaled Partial Pivoting
% takes matix A and b as parameter
% returns the solution x for Ax = b

function x =gspp(A,b)
n = size(A,1);
% position vector
L = 1:n;
% scale vector
S = max(abs(A),[],2);

for k = 1:n
    rmax = 0;
    for i = k:n
      r = abs(A(L(i),k)/S(L(i)));
      if(r > rmax) 
        rmax = r;
        j = i;
      end
    end
    %swapping L_i and L_k
    temp = L(j);
    L(j) = L(k);
    L(k) = temp;
    
    for i = k+1 : n
       xmult = A(L(i),k)/A(L(k),k);
       A(L(i),k) = xmult;
       for j = k + 1 : n
           A(L(i),j) = A(L(i),j)-(xmult*A(L(k),j));
       end 
    end
end

%Backward elimination
for k = 1 : n-1
   for i = k+1 : n
     b(L(i)) = b(L(i)) - (A(L(i),k)*b(L(k)));
   end
end
x(n) = b(L(n))/A(L(n),n);

for i = n-1:-1:1
   sum = b(L(i));
   for j = i+1:n
   sum = sum - (A(L(i),j)*x(j));
    end
    x(i) = sum/A(L(i),i);
end
    x=x';
end
