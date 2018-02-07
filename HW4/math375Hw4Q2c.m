%% 2c)
% Measuring the running time of gspp function
N = 1:100;
for i = 1:length(N)
    [A,b] = generate_SPD_mat_and_rhs_vec(N(i));
    % using tic toc command to measure time
    tic
    % taking average for 500 times
    for j = 1:500
       x = gspp(A,b); 
    end
    % finding average of 100 times
    time(i) = toc/500;
end
% plotting using plot function
plot(N,time)
xlabel('N')
ylabel('time')
title('runtime error for gspp using plot')

% plotting using loglog function
figure
loglog(N,time)
axis ([10 100 ])
xlabel('N')
ylabel('time')
title('runtime error for gspp using loglog')

