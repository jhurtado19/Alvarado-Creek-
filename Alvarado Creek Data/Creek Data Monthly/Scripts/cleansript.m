% Fill outliers
data3 = filloutliers(data3,"clip","gesd","ThresholdFactor",0.25, ...
    "DataVariables","RFU3");

% Fill outliers
data3 = filloutliers(data3,"linear","ThresholdFactor",2.25,"DataVariables","RFU3");

% Fill outliers
data3 = filloutliers(data3,"linear","movmedian",30,"ThresholdFactor",2.75, ...
    "DataVariables","RFU3");