%% 1 (b)& (e)
format long e
f = @(x) exp(x);
fprime = @(x) exp(x); %explicit derivative
%initializing a and h
a =0 ;
h = logspace (-1,-16,16);
%calculating error 
actualDiff = fprime(a);
diffApprox = (f(a+h) - f(a))./ h;
error = abs(diffApprox - actualDiff);
loglog(h,error,'r')
hold on
%1e)
line([sqrt(eps),sqrt(eps)],[get(gca,'ylim')])
xlabel('h')
ylabel('error')
title('error vs h in numerical differentiation of e^x')
legend('error', 'sqrt(eps)','location','southeast')
% Yes the result aggrees with the data that I
% plotted in (b)


