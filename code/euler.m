function y = euler(g, tspan, y0)

cur_x = tspan(1);
cur_y = y0;
y = zeros(length(y0), length(tspan));

for idx = 1:length(tspan)
    h = tspan(idx) - cur_x;
    cur_y = cur_y + g(cur_x, cur_y) * h;
    cur_x = tspan(idx);
    y(:, idx) = cur_y;
end

end

