
figure;
% [wlvlsd,wlmean] = normalpeaks(wlvl,t_usgs,'b','--r');
hold;
[tempsd,tempmean] = normalcircpeaks(temp,t_wql,'r','--r');
[cdomsd,cdommean] = normalpeaks(cdom,t_wql,'c','--r');
[trpsd,trpmean] = normalpeaks(trp,t_wql,'m','--r');

legend( ...
           'Temp', ['Temp Mean Peak Time: ', datestr(tempmean, 'HH:MM')], ...
           'CDOM', ['cdom Mean Peak Time: ', datestr(cdommean, 'HH:MM')], ...
           'Tryp', ['Tryp Mean Peak Time: ', datestr(trpmean, 'HH:MM')]);
title("Normal Distribution of Peak Times October")
hold off;

resultsTable = table({'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [tempmean; trpmean; cdommean], ...
                     [tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'MeanPeakTime', 'StandardDeviation'});

% Display the table
disp(resultsTable);