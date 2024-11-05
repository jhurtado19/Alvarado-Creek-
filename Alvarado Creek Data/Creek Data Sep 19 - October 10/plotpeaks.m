function plotpeaks(x,y)

[pks, locs] = findpeaks(y,x, 'MinPeakDistance', 0.75);
[pks2, locs2] = findpeaks(-y,x, 'MinPeakDistance', 0.75);
pks2 = -pks2;

figure;
plot(x,y);
hold on
plot(locs,pks,'go')
plot(locs2,pks2, 'ro')
hold off;

title(['Peaks in Data: x = ', inputname(1), ', y = ', inputname(2)]);
end