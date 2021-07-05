%%
res = ode45(@(x, y) 0.5*y(1), ...
    [0, 10], 0.1)

x = linspace(0,10,250);
y = deval(res,x);

figure(1);
clf;
plot(x, y)


%%
% Definere x værdier
x = linspace(0, 15, 250);

% Opstiller differentialligninger som funktioner
fh = @(x, y) 0.5 * y;
gh = @(x, y) 0.5 * y * (1-y/4);

% Start værdi for y
y0 = 0.1;

% Løser differentialligninger ud fra funktion euler's metode
y1 = euler(fh, x, y0);
y2 = euler(gh, x, y0);

% Plotter differentialigningerne
figure(1);
clf;
hold on
plot(x, y1);
plot(x, y2);
ylim([0, 10]);
legend('y1', 'y2')

%%
% Dampet oscillation
a = 1;
b = 0.25; 
c = 10;
g = @(x, y) [y(2); -b*y(2)/a-c*y(1)/a];
t = linspace(0, 25, 10000);
y = euler(g, t, [1; 0]);
figure(1);
clf;
plot(t, y(1, :));


