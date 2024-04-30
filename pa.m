n_trials = 1000;
n_flips = 21;

f = zeros(1, n_flips);

for i = 1:n_trials
    n_heads = sum(randi([0,1], 1, n_flips));
    f(n_heads + 1) = f(n_heads + 1) + 1;
end

f_float = f / n_trials;

figure;

subplot(2, 1, 1);
bar(1:n_flips, f);


subplot(2, 1, 2);
bar(1:n_flips, f_float);
    