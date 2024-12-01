

figure;
% [wlvlsd,wlmean] = normalcircpeaks(-wlvl,t_usgs,'b','--g');
hold;
[tempsd,tempmean] = normalpeaks(-temp,t_wql,'r','--g');
[cdomsd,cdommean] = normalCCpeaks2(-cdom,t_wql,'c','--g');
[trpsd,trpmean] = normalCCpeaks2(-trp,t_wql,'m','--g');

legend('Temp', ['Temp Mean Trough Time: ', datestr(tempmean, 'HH:MM')], ...
           'CDOM', ['cdom Mean Trough Time: ', datestr(cdommean, 'HH:MM')], ...
           'Tryp', ['Tryp Mean Trough Time: ', datestr(trpmean, 'HH:MM')]);
title("Normal Distribution of Trough Times October 2023")
hold off;

 resultsTable = table({'Temperature'; 'Tryp'; 'CDOM'}, ...
                         [tempmean; trpmean; cdommean], ...
                         [tempsd; trpsd; cdomsd], ...
                         'VariableNames', {'Parameter', 'MeanTroughTime', 'StandardDeviation'});

% Display the table
disp(resultsTable);
% writetable(resultsTable, 'TroughsJune.csv');