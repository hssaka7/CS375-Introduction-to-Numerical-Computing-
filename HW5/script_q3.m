 

% 3) second part 
function hw4_q3

tot_its = [10,100,1000,10000];
num_experiments = length(tot_its);

n = 1000;
%Generate Linear System
[A,b] =  generate_SPD_mat_and_rhs_vec(n);

err_jacobi = zeros(num_experiments,1);
err_gs = zeros(num_experiments,1);
err_cg = zeros(num_experiments,1);
exp_num = 1;

for tot_it =tot_its
    
    %Compute Solutions
    
    %Jacobi
    x_jacobi = my_jacobi(A,b,tot_it);
    
    %Gauss Siedel
    x_gs = my_gauss_siedel(A,b,tot_it);
    
    %CG
    x_cg = my_cg(A,b, tot_it);
    
    %"True" Solution
    x_t = A\b;
    
    %Errors
    err_jacobi(exp_num) = norm(x_t - x_jacobi);
    err_gs(exp_num) = norm(x_t - x_gs);
    err_cg(exp_num) = norm(x_t - x_cg);
    
    exp_num = exp_num + 1;
end

format long;

% Creating table 
T1 = table;
    T1.Num_Iterations = tot_its'
    
T2 = table;
    T2.Error_Jacobi = err_jacobi;
    T2.Error_GS = err_gs;
    T2.Error_CG = err_cg
    