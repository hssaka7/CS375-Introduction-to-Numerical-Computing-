

%% 3a)
N = [8 9 10 11 12];
% Calculating A,b and condition number for N = 8
hilbM8 = hilb(8);
b8 = sum(hilbM8,2);
cond_num(1) = cond(hilbM8);

% Calculating A,b and condition number for N = 9
hilbM9 = hilb(9);
b9 = sum(hilbM9,2);
cond_num(2) = cond(hilbM9);

% Calculating A,b and condition number for N = 10
hilbM10 = hilb(10);
b10 = sum(hilbM10,2);
cond_num(3) = cond(hilbM10);

% Calculating A,b and condition number for N = 11
hilbM11 = hilb(11);
b11 = sum(hilbM11,2);
cond_num(4) = cond(hilbM11);

% Calculating A,b and condition number for N = 12
hilbM12 = hilb(12);
b12 = sum(hilbM12,2);
cond_num(5) = cond(hilbM12);

% Tabulating the calculated values
T1 = table;
T1.N = N';
T1.Conditional_Number = cond_num'

%% 3d
% Using blackslash operator for the linear solve
format long e
%For N = 8
X8 = hilbM8\b8

%For N = 9
X9 = hilbM9\b9

%For N = 10
X10 = hilbM10\b10

%For N = 11
X11 = hilbM11\b11

%For N = 12
X12 = hilbM12\b12


%% 3f) 
% Initializing the true value for X
X_t8 = ones(8,1);
X_t9 = ones(9,1);
X_t10 = ones(10,1);
X_t11 = ones(11,1);
X_t12 = ones(12,1);

N =[8 9 10 11 12];

% Finding the relative error for different value of N
relative_error(1) = norm(X_t8-X8,2)/norm(X_t8,2);
relative_error(2) = norm(X_t9-X9,2)/norm(X_t9,2);
relative_error(3) = norm(X_t10-X10,2)/norm(X_t10,2);
relative_error(4) = norm(X_t11-X11,2)/norm(X_t11,2);
relative_error(5) = norm(X_t12-X12,2)/norm(X_t12,2);

% Finding relative residual for different value of N
residual(1) = norm(b8-(hilbM8*X8),2)/norm(b8,2);
residual(2) = norm(b9-(hilbM9*X9),2)/norm(b9,2);
residual(3) = norm(b10-(hilbM10*X10),2)/norm(b10,2);
residual(4) = norm(b11-(hilbM11*X11),2)/norm(b11,2);
residual(5) = norm(b12-(hilbM12*X12),2)/norm(b12,2);

% Tabulating the calculted values 
T2 = table;
T2.Error = relative_error';
T2.Residual = residual'

