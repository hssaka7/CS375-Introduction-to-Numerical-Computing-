%% Problem 1
format long e
% fl(1+e)  =  1,                  e < machine eps 
% fl(4000 (1 + e) ) = 4000,       e < machine eps
% fl(4000 + 4000e) = 4000,        e < machine eps
% fl( 4000 + a) = 4000,           a < 4000*machine eps

%% Checking the answer
% checking whith different value
x2 = 4000 + 4000*eps  % equal value
x3 = 4000 + 4000*eps*10  %greater value of a
x4 = 4000 + 4000*eps*0.1  % smaller value of a
%% Conclusion
% Therefore the value of a should be less than 4000*machine eplision 
disp('a should be less than approxval where,'); approxval = 4000*eps