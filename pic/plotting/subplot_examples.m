%%
x = linspace(-5, 5);

figure(1);
clf;

subplot(2, 1, 1);
plot(x, sin(x));
title('Sin(x)');
ylim([-1.5, 1.5]);

subplot(2, 1, 2);
plot(x, x);
hold on;
plot(x, sin(x));
title('Taylor 1');
ylim([-1.5, 1.5]);

print('subplot_example_1.png', '-dpng', '-r300');

%%
x = linspace(-5, 5);

figure(1);
clf;

subplot(2, 2, 1);
plot(x, sin(x));
title('Sin(x)');
ylim([-1.5, 1.5]);

subplot(2, 2, 2);
plot(x, cos(x));
title('Cos(x)');
ylim([-1.5, 1.5]);

subplot(2, 2, 3);
plot(x, tan(x));
title('Tan(x)');
ylim([-1.5, 1.5]);

subplot(2, 2, 4);
plot(x, exp(x));
title('Exp(x)');
ylim([-1.5, 1.5]);


print('subplot_exercise_1.png', '-dpng', '-r300');
