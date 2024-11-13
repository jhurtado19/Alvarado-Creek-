% This script shows WQL troughs and the temp peak

%'r' or 'red' for red
%'g' or 'green' for green
%'b' or 'blue' for blue
%'c' or 'cyan' for cyan
%'m' or 'magenta' for magenta
%'y' or 'yellow' for yellow
%'k' or 'black' for black
%'w' or 'white' for white

figure;
[wlvlsd,wlmean] = normalpeaks(-wlvl,t_usgs,'b','--g');
hold;
[trpsd,trpmean] = normalpeaks2(-trp,t_wql,'m','--g');
[cdomsd,cdommean] = normalpeaks(-cdom,t_wql,'c','--g');
[tempsd,tempmean] = normalpeaks2(temp,t_wql,'r','--r');
% legend('Water Level','wlvl Mean Peak Time: 08:38','Tryp','Tryp Mean Peak Time: 07:32','CDOM','cdom Mean Peak Time: 07:42','Temp','Temp Mean Trough Time:09:34')
legend('Water Level', ['wlvl Mean Trough Time: ', datestr(wlmean, 'HH:MM')], ...
           'Tryp', ['Tryp Mean Trough Time: ', datestr(trpmean, 'HH:MM')], ...
           'CDOM', ['cdom Mean Trough Time: ', datestr(cdommean, 'HH:MM')], ...
           'Temp', ['Temp Mean Peak Time: ', datestr(tempmean, 'HH:MM')]);


title('WQL and Water Lvl Troughs + Temp Peak Sep 19 - Oct 10')
resultsTable = table({'Water Level'; 'Temperature'; 'Tryp'; 'CDOM'}, ...
                     [wlmean; tempmean; trpmean; cdommean], ...
                     [wlvlsd; tempsd; trpsd; cdomsd], ...
                     'VariableNames', {'Parameter', 'Mean', 'StandardDeviation'});

disp(resultsTable);