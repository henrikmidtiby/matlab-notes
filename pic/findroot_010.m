%%
% Examples of using fzero
fh = @(x) exp(x) - 4*x;
root = fzero(fh, 0.5)
root = fzero(fh, 3)

x = linspace(-1, 3);
figure(1);
clf;
hold on;
plot(x, fh(x));
plot(x, 0*x);

