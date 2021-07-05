%%
% Plot circle
theta = linspace(0, 2*pi);
x = sin(theta);
y = cos(theta);
figure(1);
plot(x, y)
print('aspect_ratio_free.png', '-dpng', '-r300');
figure(2);
plot(x, y);
axis equal;
print('aspect_ratio_equal.png', '-dpng', '-r300');
