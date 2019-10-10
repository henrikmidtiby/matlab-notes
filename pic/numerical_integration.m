%%
% Obtain a reference value for the case integral.
fh = @(x) exp(-x) .* sin(x);
integral(fh, 0, 5)


%%
% Apply the trapez method to estimate the value of the definite integral
fh = @(x) exp(-x) .* sin(x);
nvals = 10;
x = linspace(0, 5, nvals);
fx = fh(x);
value = 0;
for k = 1:(nvals - 1)
    avg_height = 0.5*(fx(k) + fx(k + 1));
    dx = x(k + 1) - x(k);
    value = value + avg_height * dx;
end
fprintf("Value: %f\n", value)
figure(1);
clf;
plot(x, fx);

