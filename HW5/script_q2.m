
% 2)
% part 2
function hw4_q2

N = [10,100,500,1000];

tot_it = 100;
i = 1;

for n=N
    %Generate Linear System
    [A,b] =  generate_SPD_mat_and_rhs_vec(n);
    
    %Compute Solution
    x_jacobi = my_jacobi(A,b,tot_it);
    
    %"True" Solution
    x_t = A\b;
    
    %Errors
    err_jacobi(i) = norm(x_t - x_jacobi);
    i = i + 1;
end
T1 = table;
    T1.N = N';
    T1.error_jacobi = err_jacobi'
end
    