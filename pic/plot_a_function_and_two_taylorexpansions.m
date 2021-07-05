%%
xvals = linspace(-1, 2);

fh = @(x) sin(2*x);
dfh = @(x) 2*cos(2*x);
ddfh = @(x) -4*sin(2*x);
x0 = 0.3;

figure(1);
clf;
hold on;
plot(xvals, fh(xvals), 'b')
plot(x0*[1, 1], fh(x0) * [0, 1], 'k:');
plot(xvals, fh(x0)+dfh(x0)*(xvals - x0), 'r')
plot(xvals, fh(x0)+dfh(x0)*(xvals - x0) + 1/2*ddfh(x0)*(xvals - x0).^2, 'g')
ylim([-2, 2])

text(1.1, -0.6, "$f(x) = \sin(2 \cdot x)$", "Interpreter", "latex");
text(0.7, 1.7, "$p_1(x)$", "Interpreter", "latex");
text(1.5, 1.1, "$p_2(x)$", "Interpreter", "latex");
text(0.3, -0.1, "$x_0 = 0.3$", "Interpreter", "latex", ...
     "HorizontalAlignment", "center");
 
 title("A function and two taylor expansions", ...
     "Interpreter", "latex");
 
print('a_function_and_two_taylorexansions.png', '-dpng', '-r600');

 