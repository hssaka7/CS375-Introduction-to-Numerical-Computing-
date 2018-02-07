
%% Problem 2
%% a) 
%% Initializing the value of y 
y = 0:pi/12:pi;
x = pi/2;

%% Evaluating minimum N
% for loop is ran for large number of times, until Minimum N for which
% the error is less than given error is found.
for N = 0:10000000000
   val = ((x)^(2*N + 1))/(factorial(2*N+1)); 
    if(val <2e-8)
        minN = N;
        break;
    end
end
%Minimum error
Minimum_N = minN