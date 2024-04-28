n_trials = 1000;
n_flips = 21;

values = zeros(1, n_flips);
valuesFloat = zeros(1, n_flips);

% Simulating coin flips
for i = 1:n_trials
    numberOfHeads = sum(randi([0,1], 1, n_flips)); % Vectorized operation
    values(numberOfHeads + 1) = values(numberOfHeads + 1) + 1; % Adjusting index since MATLAB arrays are 1-indexed
end

valuesFloat = values / n_trials; % Vectorized operation

% Plotting
figure;

% Integer Values
subplot(2,1,1);
bar(1:n_flips, values);
xlabel('Number of Heads');
ylabel('Frequency');
title('Integer Values');
grid on;

% Float Values
subplot(2,1,2);
bar(1:n_flips, valuesFloat);
xlabel('Number of Heads');
ylabel('Frequency');
title('Float Values');
grid on;
