% Script to make normal distribution of peak times

figure;
[wlvlsd,wlmean] = normalpeaks(-wlvl,t_usgs);
hold;
[tempsd,tempmean] = normalpeaks2(-temp,t_wql);
[trpsd,trpmean] = normalpeaks2(-trp,t_wql);
[cdomsd,cdommean] = normalpeaks(-cdom,t_wql);
legend('Water Level','wlvl Mean Trough Time: 18:05','Temp','Temp Mean Trough Time:09:34','Tryp','Tryp Trough Peak Time: 18:49','CDOM','cdom Trough Peak Time: 21:29')
title("Normal Distribution of Trough Times")
hold off;

resultsTable = table({'Water Level'; 'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [wlmean; tempmean; trpmean; cdommean], ...
                     [wlvlsd; tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'MeanTroughTime', 'StandardDeviation'});

% Display the table
disp(resultsTable);