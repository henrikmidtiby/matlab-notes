function [x1, fvalue, iterations] = sekant_method(fh, x0, x1, limit)

iterations = 0;
fvalue = fh(x1);
while abs(fvalue) > limit
    [x2, fvalue] = sekant_one_step(fh, x0, x1);
    x0 = x1;
    x1 = x2;
    iterations = iterations + 1;
end

end

