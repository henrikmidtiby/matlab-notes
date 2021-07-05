%%
xvals = linspace(-3, 3);

fh = @(x) 0.2*x + 0.5;
gh = @(x) exp(-x.^2);

figure(1);
clf;
hold on;
plot(xvals, fh(xvals), 'b')
plot(xvals, gh(xvals), 'r')
ylim([-0.2, 1.2])

text(1.4, 0.7, "$f(x) = 0.2 x + 0.5$", "Interpreter", "latex");
text(-1.2, 1.0, "$g(x) = e^{-x^2}$", "Interpreter", "latex");
 
title("Two functions that intersect", ...
     "Interpreter", "latex");
 
print('intersection_of_two_functions.png', '-dpng', '-r600');

