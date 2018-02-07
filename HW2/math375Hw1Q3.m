%% Problem 3
%% Initializing format,a,b,& c 
format long e
a = 0.5;
b = 1000;
c = 5e-7;


%% a) 
%According to Loss of precision theorem, 
% 10^-p <= 1- (((b^2 -4ac)^0.5)/b) <= 10^-q

approxLoss = 1- (b/(sqrt(b^2 - 4*a*c)))

disp('we loose 12 to 13 digits ')

%% b)
% roots function returns the true root of the given
% quadratic equation. 
r = roots([a b c])

%% c) 
% finding one of the root using given equations
rootFormula = (-b + sqrt(b^2 - 4 * a * c))/(2*a)
relativeError = abs((rootFormula - r(2))/r(2))
% calculating relative error to compare answer with part a. 
% the relative error is small. 

%% d)
% calculating the root using new formula which reduces the catastrophic
% error
newFormulaRoot = (-2*c)/+(b+(sqrt(b^2 - 4* a* c)))

