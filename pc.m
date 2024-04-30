t_matrix = [1, 0, 0;
            0.002, 0.998, 0;
            0, 0.002, 0.998];

threshold = 1e-5;
max_iteration = 5000;
result = t_matrix;

for i = 1: max_iteration
    prev_result = result;
    result = result * t_matrix;
    
    if norm(result - prev_result, 1) < threshold
        disp(i);
        break;        
    end
end

disp(result);
disp(round(result, 2));