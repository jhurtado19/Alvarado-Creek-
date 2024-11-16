% Generate example data
x = linspace(0, 36, 100);
y = sin(x);

% Create a plot
figure;
plot(x, y);

% Set the x-axis ticks
xticks(0:1:36);

% Create labels for 36 hours
labels = cell(1, 37);
for i = 0:36
    hour = mod(i, 24);
    if hour == 0
        labels{i+1} = '12 AM';
    elseif hour < 12
        labels{i+1} = sprintf('%d AM', hour);
    elseif hour == 12
        labels{i+1} = '12 PM';
    else
        labels{i+1} = sprintf('%d PM', hour - 12);
    end
end

% Set the x-axis tick labels
xticklabels(labels);

% Set the x-axis label
xlabel('Time of Day');

% Set the title
title('Example Plot with 36-Hour X-Axis Labels');

% Show the grid
grid on;
