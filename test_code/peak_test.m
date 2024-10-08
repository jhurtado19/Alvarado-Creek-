% Example data (you can replace this with your own)
data = [25, 8, 15, 5, 6, 10, 10, 3, 1, 20, 7];

% Find the local maxima (peaks)
pks = findpeaks(data);

% Display the peak values
disp("Peak values:");
disp(pks);

% Optionally, plot the signal and overlay the peak values
plot(data);
hold on;
scatter(find(pks), pks, 'ro', 'filled');
xlabel('Sample Index');
ylabel('Signal Value');
title('Finding Peaks in Data');
legend('Signal', 'Peaks');
hold off;
