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
[trpsd,trpmean] = normalpeaks(trp,t_wql,'m','--r');
[cdomsd,cdommean] = normalpeaks(cdom,t_wql,'c','--r');
[tempsd,tempmean] = normalpeaks2(-temp,t_wql,'r','--g');
% legend('Water Level','wlvl Mean Peak Time: 08:38','Tryp','Tryp Mean Peak Time: 07:32','CDOM','cdom Mean Peak Time: 07:42','Temp','Temp Mean Trough Time:09:34')
legend('Water Level', ['wlvl Mean Peak Time: ', datestr(wlmean, 'HH:MM')], ...
           'Tryp', ['Tryp Mean Peak Time: ', datestr(trpmean, 'HH:MM')], ...
           'CDOM', ['cdom Mean Peak Time: ', datestr(cdommean, 'HH:MM')], ...
           'Temp', ['Temp Mean Trough Time: ', datestr(tempmean, 'HH:MM')]);


title('WQL and Water Lvl Peaks + Temp Trough Sep 19 - Oct 10')
resultsTable = table({'Water Level'; 'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [wlmean; tempmean; trpmean; cdommean], ...
                     [wlvlsd; tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'Mean', 'StandardDeviation'});

disp(resultsTable);