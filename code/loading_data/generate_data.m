%%
% Small script for generating data for our experiments

%%
% Linear regression

seed = 1;
rng(seed);
n_obs = 1000;
x = 5*rand(n_obs, 1);
y = 0.5*x + 3 + 0.2*randn(n_obs, 1);

dlmwrite('test.csv', [x, y]);

figure(1);
clf;
plot(x, y, 'o')


%%
% Determine the least squares fit
model = @(x, P) P(1)*x + P(2);
model_error = @(P) sum((y - model(x, P)).^2);
options = optimset('Display','iter','PlotFcns',@optimplotfval);
P = fminsearch(model_error, [-3121, 1231], options)

figure(1);
clf;
hold on;
plot(x, y, 'o');
plot(x, model(x, P), '-k', 'LineWidth', 3);



%%
% Linear regression

seed = 1;
rng(seed);
n_obs = 1000;
x = 0 + 40*rand(n_obs, 1);
y = 0.5*sin(x*3+3).*exp(-0.05*x) + 0.05*randn(n_obs, 1).*exp(-0.1*x);

figure(1);
clf;
plot(x, y, 'o')


%%
% Determine the least squares fit
model = @(x, P) P(1)*sin(x*P(2)+P(3)).*exp(-P(4)*x);
model_error = @(P) sum((y - model(x, P)).^2);
options = optimset('Display','iter','PlotFcns',@optimplotfval);
P = fminsearch(model_error, [0.6, 2.5, -0.2, 0.2], options)

%%
figure(1);
clf;
hold on;
plot(x, y, 'o');
plot(sort(x), model(sort(x), P), '-k', 'LineWidth', 3);



%%
% Generate data for the linear regression example and save it to a file.
seed = 1;
rng(seed);
n_obs = 10;
x = 5*rand(n_obs, 1);
y = 0.5*x + 3 + 0.2*randn(n_obs, 1);

dlmwrite('datafile.csv', [x, y]);

%%
% Loading data from a file
A = dlmread('datafile.csv');
x = A(:, 1);
y = A(:, 2);
figure(1);
clf;
plot(x, y, 'o')

