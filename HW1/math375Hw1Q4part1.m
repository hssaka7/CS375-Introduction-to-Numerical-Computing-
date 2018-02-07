
%% Problem 4
%% Initializing value of x
x = 0:0.001:1;
% It creates a matrix having element from 0 to 1 with an increment of
% 0.001. The increment is small so that we can get many values of x and
% makes our graph smoother. 

%% Using plot command

plot(x,x,'k')
hold on

%plots y = x using black color and holds the current plot to draw another
%figure on same graph.

plot(x,x.^2, 'y')
hold on
%plots y = x^2 using yellow and holds the current plot to draw another
%figure on same graph.

plot(x,x.^3,'g')
hold on
%plots y = x^3 using green color and holds the current plot to draw another
%figure on same graph.

plot(x,x.^4,'b')
%plots y = x^4 using blue color.


title('Graph of: "x, x^2, x^3, x^4"(using plot command)','fontsize',18)
xlabel('X-axis','fontsize',18)
ylabel('Y-axis','fontsize',18)
legend('x','x^2','x^3','x^4','Location','northwest')
% sets title, x-label, y-label(with font size : 18) and legend of the graph.
% it sets legent on northwest location so that it is not overllaped with
% our curves. 


%% Using loglog command
figure() % creates new figure. 

loglog(x,x,'k')
hold on
%draws y = x using black color and hold the current plot to draw another
%figure on same graph.

loglog(x,x.^2,'y')
hold on
%draws y = x^2 using yellow color and hold the current plot to draw another
%figure on same graph.

loglog(x, x.^3,'g')
hold on
%draws y = x^3 using green color and hold the current plot to draw another
%figure on same graph.

loglog(x,x.^4,'b')
%draws y = x using blue color.


title('Graph of: "x, x^2, x^3, x^4"(using loglog command)','fontsize',18)
xlabel('X-axis','fontsize',18)
ylabel('Y-axis','fontsize',18)
legend('x','x^2','x^3','x^4','Location','northwest')
% sets title, x-label, y-label(with font size : 18) and legend of the graph.
% it sets legent on northwest location so that it is not overllaped with
% our curves. 


