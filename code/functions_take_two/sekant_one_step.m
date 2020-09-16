function [x_improved, fval] = sekant_one_step(fh, x1, x2)

fx1 = fh(x1);
fx2 = fh(x2);

slope = (fx2 - fx1) / (x2 - x1);

x_improved = x1 - fx1 / slope;
fval = fh(x_improved);

end

