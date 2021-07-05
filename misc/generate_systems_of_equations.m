%%
% Generate a system of n equations
n = 3;
A = randi([-3, 3], [n, n])
x = randi([-5, 5], [n, 1]);
b = A*x
if abs(det(A)) < 0.1
    fprintf("Not a unique solution\n");
end

%%
% Solve the system of equations by rewriting them in 
% reduced row echelon form
ext_matrix = [A, b]
rref(ext_matrix)

