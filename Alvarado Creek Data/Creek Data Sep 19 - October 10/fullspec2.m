function [stdTOD,mTOD] = fullspec2(y_vec, t_vec, color)
    % Find peaks and their locations
    [pks, locs] = findpeaks(y_vec, t_vec, 'MinPeakDistance', 0.75);
    pks(1) = [];
    locs(1) = [];

    loc_hours = timeofday(locs);
    mTOD = mean(loc_hours);
    peak_time_hours = hours(loc_hours);
    stdTOD = std(loc_hours);
    
    
    % Calculate mean and standard deviation of peak times in hours
    mu = mean(peak_time_hours);
    sigma = std(peak_time_hours);

    % Define the range for the x-axis to cover a full 24 hours
    x = linspace(0, 24, 100); % 0 to 24 hours

    % Calculate the normal distribution (bell curve)
    y1 = normpdf(x, mu, sigma);


% Trough
    [pks, locs] = findpeaks(-y_vec, t_vec, 'MinPeakDistance', 0.75);
    pks(1) = [];
    locs(1) = [];

    loc_hours = timeofday(locs);
    mTOD = mean(loc_hours);
    peak_time_hours = hours(loc_hours);
    stdTOD = std(loc_hours);
    
    % Calculate mean and standard deviation of peak times in hours
    mu = mean(peak_time_hours);
    sigma = std(peak_time_hours);

    % Calculate the normal distribution (bell curve)
    y2 = normpdf(x, mu, sigma);
    y2 = -y2;



    y3 = y1+y2;






     % Convert x values back to duration
    x_duration = duration(0, 0, x * 3600); % Convert hours to seconds and then to duration
    % mean_time_str = datestr(mTOD, 'HH:MM');

    % Plot the normal distribution of peak times in duration format
    plot(x_duration, y3, 'LineWidth', 2, 'Color', color);
    title('Normal Distribution of Peak Times Over 22 Days');
    xlabel('Time (HH:mm)');
    ylabel('Probability Density');
    % xline(mTOD, linespec, 'LineWidth', 2); % 'Label', 'Mean', 'LabelOrientation', 'horizontal');
    % text(mTOD, max(y)/2, ['Mean: ', mean_time_str], 'Color', 'red', 'FontSize', 12, 'HorizontalAlignment', 'center');
    % legend(['Data (Mean Time: ', mean_time_str, ')'])
    grid on;

    % Return the standard deviation
    return;
end