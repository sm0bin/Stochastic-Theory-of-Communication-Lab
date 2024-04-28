matrix = [1, 0, 0;
          0.002, 0.998, 0;
          0, 0.002, 0.998];
      
threshold = 1e-5;
maxIteration = 5000;

result = matrix;

for i = 1:maxIteration
    previousResult = result;
    result = result*matrix;
    disp(i)
    if(norm(result-previousResult, 1) < threshold)
        break;
    end
end

roundedMatrix = round(result, 2);

disp('Steady State Matix');
disp(result);
disp('Rounded Steady State Matrix');
disp(roundedMatrix);

