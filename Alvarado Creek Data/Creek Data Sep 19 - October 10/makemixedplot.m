figure;
[wlvlsd,wlmean] = normalpeaks(wlvl,t_usgs);
hold;
[trpsd,trpmean] = normalpeaks(trp,t_wql);
[cdomsd,cdommean] = normalpeaks(cdom,t_wql);
[tempsd,tempmean] = normalpeaks2(-temp,t_wql);
legend('Water Level','wlvl Mean Peak Time: 08:38','Tryp','Tryp Mean Peak Time: 07:32','CDOM','cdom Mean Peak Time: 07:42','Temp','Temp Mean Trough Time:09:34')
title('WQL and Water Lvl Peaks + Temp Trough')
resultsTable = table({'Water Level'; 'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [wlmean; tempmean; trpmean; cdommean], ...
                     [wlvlsd; tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'Mean', 'StandardDeviation'});

disp(resultsTable);