%%
% Test of the substitution rule
fh1 = @(x) sin(2*x);
fh2 = @(x) sin(x) / 2;
integral(fh1, 1, 3)
integral(fh2, 2, 6)