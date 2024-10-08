% READ ME for this data set.

%% TABLES
% rData - contains original data set downloaded from Qdatalive
% rData1 - contains smoothed and normalized data 

%% VECTORS
% tRFU contains tryp RFU values smoothed and normed
% cTemp contains temp values, normalized
% t_vec contains the time vector for the data

%% PEAKS AND LOCS
% findpeaks() takes data vectors as args and returns peak values and locs,
% these peaks values are useful for visuals here. Use locs to index rData
% to get real peak values 

% pks1 - peaks for cTemp
% pks2 - peaks for tRFU
% locs1 - peak locations (time stamps) for cTemp
% locs2 - peak locations for tRFU

%% VALUES
% rPeakTimes - contain the hours of the day tRFU peaks occured at 
% cPeakTImes - contain the hours of the day temperature peaks occured at

% meanRPT - mean hour of the day of spike occurence 
% meanCPT - mean hour of the day of spike occurence

% rPeriod - differnces between peak hours = periodicity 
% cPeriod - differences between peak hours = periodicity 

% meanRP - mean of RFU periodicity 
% meanCP - mean of temp periodicity

% deltaPT - difference between peak times of locs1 and locs2, time between
% peaks of temp and RFU
% meantDPT - mean of deltaPT, mean difference between peaks of RFU and Temp

