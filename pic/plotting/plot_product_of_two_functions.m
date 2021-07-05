% Exercise 1: Recreate a figure

% Define f(x), g(x) and the range of x values that should be plotted.
fh = @(x) x.^2;
gh = @(x) (1-x).^5;
hh = @(x) 50*fh(x) .* gh(x);
xvals = linspace(0, 1);

% Locate minima of h(x).
h_minima = fminsearch(@(x) -hh(x), 0.2);

% Start a new figure
figure(1);
clf;
hold on;

% Plot functions.
plot(xvals, fh(xvals));
plot(xvals, gh(xvals));
plot(xvals, hh(xvals));

% Indicate locations of roots.
plot(h_minima, hh(h_minima), '.b', 'MarkerSize', 35);

% Add text to plot.
text(0.8, 0.9, "$f(x) = x^2$", ...
    'interpreter', 'latex');
text(0.05, 0.9, "$g(x) = (1-x)^5$", ...
    'interpreter', 'latex');
text(0.4, 0.7, "$h(x) = 50 \cdot f(x) \cdot g(x)$", ...
    'interpreter', 'latex');

% Add title and axis labels.
title("Produkt af to funktioner");
%xlabel('x akse');
%ylabel('y akse');
ylim([0, 1]);

% Write the figure to disk.
print('product_of_two_functions.png', '-dpng', '-r600');

