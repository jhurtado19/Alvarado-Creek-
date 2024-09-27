% This script is for generating the plot ACT_Smooth_Corrected for August 30
% - September 19 2024, Tryptophan RFU in Alvarado Creek and belongs to the
% WIRLab. 
clear;
% Read in data from CSV, consider preprocessing data in Excel to remove
% label rows OR use import data tool within matlab UI.

data = readtable('try_8_30_24-9_19_24.csv');

% Select columns and assign to seperate vectors 
t = data.Var1;
x = data.Var2;

% Smoothdata function takes the vector containing the RFU values and uses
% method SmoothingFactor to smooth data using moving mean, smoothing factor
% 0.5 indicates that the window size is half the default window size for
% the data set, usually taken as 10% the total number of values in the set.
x1 = smoothdata(x, 'SmoothingFactor', 0.05);

% Detrend function used to remove linear trends from data, in this case
% employed to correct the skew observed from biofilm buildup on the sensor.
% Takes RFU vector, computes detrended data by fitting a polynomial to the
% data and reducing slope to zero, sets mean to 0 by default. By adding
% back the mean of the data we can recenter the points around the average
% of the original data. In this case, due to the skew, we take the values
% within an acceptable range from the dates proximal to the most recent
% cleaning and use this average to correct the data. 
xD = detrend(x1) + mean(x1(1:313));
x_od = detrend(x) + mean(x(1:313)); % detrend original data

% Fitting polynomials to the smoothed data. Polyfit takes as an argument a
% numerical x_axis vector, so time_vector must be of type single or double,
% not datetime. 
time_vector = 1:length(t);

% Pass as arguments to polyfit the time vector and the RFU vector, fits a
% polynomial of 3rd degree, output is a list of coefficients. The
% polynomial is fist using linear regression. This is done twice, once over
% both corrected and uncorrected data.
p = polyfit(time_vector, xD,3);

% Extracted coeffients are stored in 'p', a new set of points is calculated
% using polyval which takes the x_axis vector and computes a new set of
% data points using the coefficients from polyfit.
xD_LR = polyval(p,time_vector);
p2 = polyfit(time_vector, x1,3);
x1_LR = polyval(p2,time_vector);

% Calculate some basic statistics from the corrected RFU vector.
mean_val = mean(xD);
max = max(xD);
min = min(xD);

% Generate some equation strings for the plot.
equation = sprintf('y = %.e * x^3 + %.e * x^2 + %.e * x + %.f', p(1), p(2), p(3), p(4));
equation1 = sprintf('y = %.e * x^3 + %.e * x^2 + %.e * x + %.f', p2(1), p2(2), p2(3), p2(4));

% Plot figures.
figure(1);
plot(t,x);
plot(t,x_od);
plot(t,x1,color='red');
hold on;
plot(t,xD,color='blue');
plot(t,xD_LR,color='green');
plot(t,x1_LR,color='black');
xlabel('August 30 - September 19, sample period = 10 minutes, sample frequency = 0.00167 Hz')
ylabel('Tryptophan RFU');
title('Alvarado Creeek Tryptophan RFU Smoothed & Corrected Trend Corrected Aug 30 - Sep 19 2024')
legend('Original-Smoothed','Corrected-Smoothed',equation,equation1, 'Location', 'southwest');

% Add UI panel to display stats. 
panel = uipanel('Title', 'Corrected Statistics', 'FontSize', 12,'BackgroundColor', 'white','Position', [0.143265609744756,0.266778523489932,0.141596433506549,0.145973154362417],'FontName', 'Arial Rounded MT Bold'); % Adjust position as needed
uicontrol('Parent', panel, 'Style', 'text', 'String', sprintf('Mean: %.2f', mean_val),'FontSize', 10, 'BackgroundColor', 'white', 'Position', [-7,20,100,20]);
uicontrol('Parent', panel, 'Style', 'text', 'String', sprintf('Max: %.2f', max),'FontSize', 10, 'BackgroundColor', 'white', 'Position', [-10,40,100,20]);
uicontrol('Parent', panel, 'Style', 'text', 'String', sprintf('Min: %.2f', min),'FontSize', 10, 'BackgroundColor', 'white', 'Position', [-11,60,100,20]);
