totalExperiment = 1000;
numberOfFlipsUntilFirstHead = zeros(1, 20);

for i = 1:totalExperiment
    numberOfTrial = 0;
    while randi([0,1]) == 0
        numberOfTrial = numberOfTrial + 1;
    end
    numberOfFlipsUntilFirstHead(numberOfTrial + 1) = numberOfFlipsUntilFirstHead(numberOfTrial + 1) + 1;
end

numberOfFlipsUntilFirstHead = numberOfFlipsUntilFirstHead / totalExperiment;

bar(numberOfFlipsUntilFirstHead);
xlabel('Number of Flips to get First Head');
ylabel('Frequency');
title('Pdf of Geometric Distribution');
grid on;