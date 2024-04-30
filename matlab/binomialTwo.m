n_trials = 1000;
n_flips = 10;

values = zeros(1, n_flips);

% Simulating coin flips
for i = 1:n_trials
    n_success = 0
    for j = 1:n_flips
        if randi([0, 9]) < 7
            n_success = n_success + 1
        end
    end
    values(n_success) = values(n_success) + 1; % Adjusting index since MATLAB arrays are 1-indexed
end

valuesFloat = values / n_trials; % Vectorized operation

% Plotting
figure;
bar(valuesFloat);
xlabel('Number of Heads');
ylabel('Frequency');
title('Pdf of Binomial Distribution');
grid on;
