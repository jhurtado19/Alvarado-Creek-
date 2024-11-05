% Script to make normal distribution of peak times

figure;
[wlvlsd,wlmean] = normalpeaks(wlvl,t_usgs);
hold;
[tempsd,tempmean] = normalpeaks2(temp,t_wql);
[trpsd,trpmean] = normalpeaks(trp,t_wql);
[cdomsd,cdommean] = normalpeaks(cdom,t_wql);
legend('Water Level','wlvl Mean Peak Time: 08:38','Temp','Temp Mean Peak Time: 22:34','Tryp','Tryp Mean Peak Time: 07:32','CDOM','cdom Mean Peak Time: 07:42')
hold off;

resultsTable = table({'Water Level'; 'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [wlmean; tempmean; trpmean; cdommean], ...
                     [wlvlsd; tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'MeanPeakTime', 'StandardDeviation'});

% Display the table
disp(resultsTable);