
x = 1:length(table.Year);
y = table.Time;
SD = table.SD;


durations = timeofday(SD);
errorbar(x,y,durations,'bo','MarkerFaceColor','b');

%ytickformat('hh:mm');
%ytickValues = datetime(2024, 12, 4, 12, 0, 0); % Major ticks from 12:00 to 24:00 (midnight)
%yticks(ytickValues);
%yticklabels(datestr(ytickValues, 'HH:MM'));

% Set y-axis limits and ticks
ytickformat('hh:mm a');
ytickValues = datetime(2024, 12, 3, 20, 0, 0):hours(1):datetime(2024, 12, 4, 12, 0, 0); % Major ticks from 11:00 PM to noon
yticks(ytickValues);
yticklabels(datestr(ytickValues, 'hh:MM AM'));

years = table.Year;

xticks(x);
xticklabels(years);

% Set y-axis label
ylabel('Time of Day');

% Set x-axis label
xlabel('Time Points');
title('1 Year Temporal Distributions of Tryptophan Peaks');
