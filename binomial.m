values = zeros(1, 21);
valuesFloat = zeros(1, 21);

for i = 1:1000
    numberOfHeads = 0;
    for j = 1:21
        if randi([0,1]) == 1
            numberOfHeads = numberOfHeads + 1;
        end
    end
    values(numberOfHeads) = values(numberOfHeads) + 1;
end

for i = 1:21
    valuesFloat(i) = values(i)/1000;
end

%Plotting integer values
subplot(2,1,1);
bar(1:21, values);
xlabel('Number of Heads');
ylabel('Frequency');
title('Integer Values');
grid on;

%Plotting Float values
subplot(2,1,2);
bar(1:21, valuesFloat);
xlabel('Number of Heads');
ylabel('Frequency');
title('Float Values');
grid on;
%Annotate the bars with index values
for i = 1:21
    text(i, values(i), num2str(i), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top');
end



