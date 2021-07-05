%%
% Basic plotting
figure(1);
clf;
x = [1, 3, 2];
y = [1, 2, 3];
plot(x, y, '-o');
xlim([0, 5]);
ylim([0, 5]);
print('basic_plotting_010.png', '-dpng', '-r300');

%%
%
% Basic plotting
fh = @(x) exp(x);
gh = @(x) 4*x;
x = linspace(-1, 3);

figure(1);
clf;
hold on;
plot(x, fh(x));
plot(x, gh(x))
print('plot_two_functions.png', '-dpng', '-r300');


