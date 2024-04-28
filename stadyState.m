% Example matrix
matrix = [1, 0, 0;
          0.002, 0.998, 0;
          0, 0.002, 0.998];

% Parameters
threshold = 1e-5;
maxIterations = 10000;

result = matrix;

for i = 1:maxIterations
    previousResult = result;
    result = result * matrix;
    disp(i);
    if norm(result - previousResult, 1) < threshold
        break;
    end
end

roundedMatrix = round(result, 2);

disp('Steady State Matrix:');
disp(result);
disp('Rounded Steady State Matrix:');
disp(roundedMatrix);
