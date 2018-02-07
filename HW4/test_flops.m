function test_flops

close all;
N = [10^4,10^5,10^6,10^7,10^8];
num_pts = length(N);
%Array for storing running times
times = zeros(num_pts,1);

for i = 1:num_pts
    n = N(i)
    
    %Create two random vectors of size n
    u = rand(n,1);
    v = rand(n,1);
    
    %Measure time using the cputime command
    t = cputime;
    
    %Do the epxeriment 10 times
    for j = 1 : 100
        %Inner Product
        ip = u'*v;
    end
    %average the times
    times(i) = (cputime-t)/100;
    
 
end

%plot
loglog(N,times,'k-*','LineWidth',2);xlabel('n');ylabel('Time (Seconds)');
