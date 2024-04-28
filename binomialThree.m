nTrials = 1000;
nFlips = 21;

v = zeros(1, nFlips);
vFloat = zeros(1, nFlips);

for i = 1:nTrials
    nHeads = sum(randi([0,1], 1, nFlips));
    v(nHeads + 1) = v(nHeads + 1) + 1;
end

vFloat = v/nTrials;

figure;

subplot(2, 1, 1);
bar(1: nFlips, v);
xlabel('number of heads');
ylabel('frequency');
title('integer values');


subplot(2, 1, 2);
bar(1: nFlips, vFloat);
xlabel('number of heads');
ylabel('frequency');
title('floating values');
