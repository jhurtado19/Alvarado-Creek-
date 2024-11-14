% Script to make normal distribution of peak times

%'r' or 'red' for red
%'g' or 'green' for green
%'b' or 'blue' for blue
%'c' or 'cyan' for cyan
%'m' or 'magenta' for magenta
%'y' or 'yellow' for yellow
%'k' or 'black' for black
%'w' or 'white' for white

figure;
[wlvlsd,wlmean] = normalpeaks(wlvl,t_usgs,'b','--r');
hold;
[tempsd,tempmean] = normalcircpeaks(temp,t_wql,'r','--r');
[cdomsd,cdommean] = normalpeaks(cdom,t_wql,'c','--r');
[trpsd,trpmean] = normalpeaks(trp,t_wql,'m','--r');
%legend('Water Level','wlvl Mean Peak Time: 08:38','Temp','Temp Mean Peak Time: 22:34','Tryp','Tryp Mean Peak Time: 07:32','CDOM','cdom Mean Peak Time: 07:42')
legend('Water Level', ['wlvl Mean Peak Time: ', datestr(wlmean, 'HH:MM')], ...
           'Temp', ['Temp Mean Peak Time: ', datestr(tempmean, 'HH:MM')], ...
           'CDOM', ['cdom Mean Peak Time: ', datestr(cdommean, 'HH:MM')], ...
           'Tryp', ['Tryp Mean Peak Time: ', datestr(trpmean, 'HH:MM')]);
title("Normal Distribution of Peak Times September")
hold off;

resultsTable = table({'Water Level'; 'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [wlmean; tempmean; trpmean; cdommean], ...
                     [wlvlsd; tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'MeanPeakTime', 'StandardDeviation'});

% Display the table
disp(resultsTable);