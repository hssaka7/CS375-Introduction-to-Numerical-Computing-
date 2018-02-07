
%% 2b)
% Getting A and b value for n = 1, 3, 5, 7
[mat1,btemp1] = generate_SPD_mat_and_rhs_vec(1);
[mat2,btemp2] = generate_SPD_mat_and_rhs_vec(3);
[mat3,btemp3] = generate_SPD_mat_and_rhs_vec(5);
[mat4,btemp4] = generate_SPD_mat_and_rhs_vec(7);

%Solving for x
x1 = gspp(mat1,btemp1)
x2 = gspp(mat2,btemp2)
x3 = gspp(mat3,btemp3)
x4 = gspp(mat4,btemp4)

% plotting the result
subplot(2,2,1)
plot(1,x1,'*')
title('For N = 1')

subplot(2,2,2)
plot(1:3,x2,'*')
title('For N = 3')

subplot(2,2,3)
plot(1:5,x3,'*')
title('For N = 5')

subplot(2,2,4)
plot(1:7,x4,'*')
title('For N = 7')
