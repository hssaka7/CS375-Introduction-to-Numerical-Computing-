%% Problem 5
%% Initializing the value of a
a = [ 0.035 0.0001;
      0.020 0.0002;
      0.015 0.0010;
      0.030 0.0007;
      0.022 0.0003];
  
%% Assiging the value for viscous energy(nu) and eplision
nu = a(:,1);
eplision = a(:,2);
%% Calculating the length for each value of nu and eplison using the given formula. 

length = (nu.^3./eplision).^(1/4)
% First it raises the power of each element og nu matrix by 3 and dvides
% them by  corresponding elements of eplison matrix. Finally, it raises the
% power of each element by 1/4.

