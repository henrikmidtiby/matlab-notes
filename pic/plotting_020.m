%%
% Basic plotting
figure(1);
clf;
fh = @(x) -x + x.^2;
x = linspace(-3, 3);
plot(x, fh(x), 'LineWidth', 3);
xlabel('x values');
ylabel('y values');
print('basic_plotting_020.png', '-dpng', '-r300');

