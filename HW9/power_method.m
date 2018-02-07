
% Problem 2a
% power_method function
% Input: Matrix A, initial guess x and tollerence
% Output: largest eigen value and its eigen vector
function  [eval, evec] = power_method(A,x,tol)

 diff = tol;
 eval = 10;
 while diff >= tol
    y = A*x;
    eval_new = max(abs(y));
    x = (1/eval_new)*y;
    diff = abs(eval_new-eval);
    eval = eval_new;
 end
 evec = x/norm(x);
end