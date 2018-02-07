%% 2(b)
format long e
f =@(x) exp(x);
fprime =  @(x) exp(x);  %explicit derivative
%initializing a and h
a = 0;
h = logspace(-1,-16,16);
% calculating error
diffApprox = (f(a +h)- f(a-h))./(2*h);
actualDiff = fprime(a);
error = abs(diffApprox - actualDiff);
%plotting error 
loglog(h,error,'r') 
hold on
line([eps^(1/3) eps^(1/3)],[get(gca,'ylim')])
xlabel('h')
ylabel('error')
title('error vs h in numerical differentiation of e^x')
legend('error','e^(1/3)','location','southwest')
% Yes, the result agrees with the data plotted in (b), because the
% vertical line passes near to the minimum error.
