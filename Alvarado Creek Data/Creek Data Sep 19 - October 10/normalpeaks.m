function normalpeaks(y_vec,t_vec)
[pks,locs] = findpeaks(y_vec,t_vec,'MinPeakDistance', 0.75);
loc_hours = timeofday(locs);
mTOD = mean(loc_hours);
peak_time_hours = hours(loc_hours);
mu = mean(peak_time_hours);
sigma = std(peak_time_hours);

x = linspace(0, 24, 100); % 0 to 24 hours
y = normpdf(x, mu, sigma);
x_duration = duration(0, 0, x * 3600);


plot(x_duration, y, 'LineWidth', 2);
title('Normal Distribution of Peak Times');
xlabel('Time (HH:mm)');
ylabel('Probability Density');
xline(mTOD, '--r', 'LineWidth', 2, 'Label', 'Mean', 'LabelOrientation', 'horizontal');

grid on;

