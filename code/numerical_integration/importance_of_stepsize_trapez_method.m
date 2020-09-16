%%
fh = @(x) exp(-x) .* sin(x);

length_of_interval = 5 - 0;
step_size = [];
estimates = [];
for k = 1:10
    number_of_steps = 2^k;
    val = trapez_rule(fh, 0, 5, number_of_steps);
    step_size = [step_size, length_of_interval / number_of_steps];
    estimates = [estimates, val];
end

%%
figure(1);
clf; 
plot(step_size, estimates, 'o-');

%%
figure(2);
clf; 
semilogx(step_size, estimates, 'o-');