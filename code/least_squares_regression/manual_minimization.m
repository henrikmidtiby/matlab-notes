x = [1, 2, 3, 5];
y = [4, 3, 2, 1];
model = @(x, P) P(1) * x + P(2);
model_error = @(P) sum((y - model(x, P)).^2);
squared_error = model_error([-1.2, 5])