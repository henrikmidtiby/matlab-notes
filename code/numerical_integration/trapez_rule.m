function res = trapez_rule(fh, x_low, x_high, n_intervals)

x = linspace(x_low, x_high, n_intervals);
fx = fh(x);
res = 0;
for k = 1:(n_intervals - 1)
    avg_height = 0.5*(fx(k) + fx(k + 1));
    dx = x(k + 1) - x(k);
    res = res + avg_height * dx;
end

end