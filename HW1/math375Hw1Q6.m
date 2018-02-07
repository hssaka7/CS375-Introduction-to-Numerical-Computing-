%% Problem 6

%% c) 

format long
%% Initializing the values;
N = [10 20 40 80 160 320 640 1280];
a = -1;
b = 1;
% for each value of N, approx value and error is calculated by caling my_mean function.
for i = 1:size(N,2)
[mew(1,i),error(1,i)] = my_mean(@my_fun,a,b,N(i));
end
approx = mew;
err = error;

%% Plotting graph with loglog command
loglog(approx, N,'k')
% plots approx vs N using black color
hold on

loglog(err,N,'r')
%plots error Vs N using red color;

title('approx and error VS N')
xlabel('N')
ylabel('approx or error')
legend('approx','error','Location','northwest')
% set title, x label, y label and legend.

%% Creating talbe
T = table;
T.N = N';
T.Approx_Mew = approx';
T.Approx_error = err'

%% Pattern
%As the value of N increases our approximation is near to actual value and
%error decreases with increase in value of N.


