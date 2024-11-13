% Example data
x = 0:0.1:10;
y1 = sin(x);
y2 = cos(x);

% Plot data
figure
plot(x, y1, 'DisplayName', 'Sine Wave');
hold on;
plot(x, y2, 'DisplayName', 'Cosine Wave');
hold off;

% Create dummy plot objects for custom legend entries
h1 = plot(nan, nan, 'r'); % Red line
h2 = plot(nan, nan, 'g'); % Green line
h3 = plot(nan, nan, 'b'); % Blue line

% Add custom legend
legend([h1, h2, h3], 'Custom Entry 1', 'Custom Entry 2', 'Custom Entry 3');
