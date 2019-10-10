%%
x = [1, 2, 3, 5];
y = [4, 3, 2, 1];
model = @(x, P) P(1) * x + P(2);
model_error = @(P) sum((y - model(x, P)).^2);
model(x, [-1, 5])
squared_error = model_error([-1.2, 5])
xvals = linspace(0, 6);
P = fminsearch(model_error, [4, 2])

xvals = linspace(0, 6);
figure(1);
clf;
hold on;
plot(x, y, 'o');
plot(xvals, model(xvals, P));
