

%% c)
%% Initializing the value of x, n1, and n2( n2 = 7 from part a)
x = linspace(0,pi/2,100);
n1 = 3;
n2 = 7;

%% Approximation

% Approximating the value of sin calling my_sin function from part b.
% approxSin1 is when n =3 , approxSin2 is when n =7 
approxSin1 = my_sin(x,n1);
approxSin2 = my_sin(x,n2);

%% Evaluating error
%%err1 is when n =3 , err2 is when n =7
err1 = abs(sin(x) - approxSin1);
err2 = abs(sin(x) - approxSin2);

%% Plotting graphs
plot(x,err1,'-k')
hold on
plot(x,err2,'-b')
hold on

axis([0,pi/2,-.5e-4,2e-4])
title('Error Vs X when n = 3 and n = 7')
xlabel('angle x')
ylabel('error')
legend('(n1 = 3)','(n2 = 7)','location','northwest')

