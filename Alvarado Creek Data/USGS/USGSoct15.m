wtr_lvl = readtable("water_lvl_USGS - Sheet1.csv");
y_vec = wtr_lvl.water_level_ft;
t_vec = wtr_lvl.datetime;
y_vec2 = smoothdata(y_vec, "gaussian", 30);
[pks,locs] = findpeaks(y_vec2,t_vec,'MinPeakDistance', 0.75);
[pks2,locs2] = findpeaks(y_vec,t_vec,'MinPeakDistance', 0.75);
[pks3,locs3] = findpeaks(-y_vec2,t_vec, 'MinPeakDistance',0.75);


pks3 = -pks3;
peak_amps = pks2-pks3;
mean_peaks = mean(peak_amps);


figure;
plot(t_vec,y_vec);
hold on
grid on
plot(t_vec,y_vec2,"LineWidth",1);
plot(locs,pks,'go');
plot(locs2,pks2,'ro');
plot(locs3,pks3, 'go');
xlabel("Sample Period = 15 minutes")
ylabel("Water Level (inches)")
title('Water Level Diurnal Analysis, Guassian Smoothing')
legend("Raw USGS trace", "Gaussian Smoothed WS 30", "Raw Peaks", "Smoothed Peaks")

peak_diffs = diff(locs);
peak_diffs2 = diff(locs2);



disp(['Mean Peak Amplitude (trough to peak): ', num2str(mean_peaks) ' inches']);


FFTUSGS(y_vec);
