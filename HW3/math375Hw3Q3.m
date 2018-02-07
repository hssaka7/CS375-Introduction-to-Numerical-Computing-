

%% b)Central Difference 

format long

% initializing value of h and x
h = [0.5 0.1 0.05 0.025 0.0125];
x = 0.1; 

%definig f(x) and explicit f'(x)
f = @ (x) (1./(1 + 25*x.^2));
fprime = @ (x) ((-50.*x)./((1+25.*x^2)^2));

%calculating actual and approx value and error
actualValue = fprime(x);
centralApprox = (f(x+h)- f(x-h))./(2*h);
errorCentral = abs(centralApprox - actualValue);

% calculating centraHalf with half of h, for richardson extrapolation
h2 = [0.5 0.1 0.05 0.025 0.0125]/2;
centralHalf = (f(x+h2)- f(x-h2))./(2*h2);

%calculating the order of method
% we don't have p(0),so first value of p matrix is Nan

pCentral = [NaN 0 0 0 0];

for i = 2:length(h)
x = log(errorCentral(i) / errorCentral(i-1));
y = log(h(i)/h(i-1));
pCentral(i) = x/y;
end

%Creating a table for central difference
T1 = table;
T1.Central_diff = centralApprox';
T1.Error = errorCentral';
T1.p_order = pCentral'


%% c) RicharsSon Extrapolation

%finding approx using richardson extrapolation and error
richardApprox = centralHalf + (1/3)*(centralHalf - centralApprox);
errorRichard = abs(richardApprox-actualValue);

%calculating the order of method
% we don't have p(0),so first value of p matrix is Nan
pRichard = [NaN 0 0 0 0];

for j = 2:length(h)
x = log(errorRichard(j) / errorRichard(j-1));
y = log(h(j)/h(j-1));
pRichard(j) = x/y;
end

%Creating table for richardson extrapolation
T2 = table;
T2.Richard_diff = richardApprox';
T2.Error = errorRichard';
T2.p_order = pRichard'
