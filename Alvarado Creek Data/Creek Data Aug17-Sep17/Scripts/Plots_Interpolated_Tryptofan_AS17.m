%% Script for correcting peaks for Tryptofan Aug 17 - Sep 17
% Script assumes user imported data using data import tool provided with
% Matlab and that the column data types have been prepared. 

% Create a time vector and a vector containing the tryp data
data_vector <- "data_table_name"."Column_Name"
time_vector <- "data_table_name"."Column_Name" 

% First Interpolation, Detect Spike Locations 

data_interpolated <- filloutliers(data_vector, "next");

% Subset Data 

subset <- data_interpolated(1:1700);

subset_interpolated <- filloutliers(subset, "next");

% test by plotting, evaluate spike fill

% create time vector same length as subset

subset_time <- 1:length(subset)

plot(subet_time,subset_interpolated);

% once verified, replace original values with interpolated 

data_interpolated(1:1700) <- subset_interpolated;

% Plot series

plot(time_vector,data_interpolated);





