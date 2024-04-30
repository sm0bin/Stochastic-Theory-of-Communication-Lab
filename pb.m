n_trials = 1000;
n_flips_until_success = zeros(1, 15);

for i = 1: n_trials
    n_flips = 0;
    while randi([0, 1]) == 0
        n_flips = n_flips + 1;
    end
    n_flips_until_success(n_flips + 1) = n_flips_until_success(n_flips + 1) + 1;
end

n_flips_until_success_float = n_flips_until_success / n_trials;

bar(n_flips_until_success_float);
   