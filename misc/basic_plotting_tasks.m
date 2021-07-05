%%
figure(1);
clf; 
x = linspace(-2, 7);
plot(x, sin(x));
hold on;
plot(x, cos(x));

%%
figure(1);
clf; 
x = linspace(-2, 7);
plot(x, sin(x));
plot(x, cos(x));

%%
% Annotations
figure(1);
clf; 
hold on;
x = linspace(-2, 7);
plot(x, sin(x));
plot(x, cos(x));
title("Harmonic oscillations")
xlabel("Time [s]")
ylabel("Offset")

%%
% Annotations
figure(1);
clf; 
hold on;
x = linspace(-2, 7);
plot(x, sin(x));
plot(x, cos(x));
title("Harmonic oscillations $a^b$", 'interpreter', 'latex')
xlabel("Time $t$ [s]", 'interpreter', 'latex')
ylabel("Offset $\sin(t)$", 'interpreter', 'latex')

%%
figure(1);
clf; 
x = linspace(-2, 7);
plot(x, sin(x));
text(0.6, 1.1, "Peak location");
ylim([-1.2, 1.2]);
