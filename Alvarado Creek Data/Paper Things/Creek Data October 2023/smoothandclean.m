% Fill outliers
data = filloutliers(data,"linear","gesd","ThresholdFactor",0.25,...
    "DataVariables","TryptophanRFU");

% Fill outliers
data = filloutliers(data,"linear","movmedian",200,"DataVariables","TryptophanRFU");

% Smooth input data
data = smoothdata(data,"gaussian",90,"DataVariables","TryptophanRFU");

% Fill outliers
data = filloutliers(data,"linear","movmedian",200,"DataVariables","CDOMRFU");

% Smooth input data
data = smoothdata(data,"gaussian",100,"DataVariables","CDOMRFU");

% Fill outliers
data = filloutliers(data,"linear","movmedian",63,"DataVariables","Temperature");

% Fill outliers
data = filloutliers(data,"linear","movmedian",100,"ThresholdFactor",2.5,...
    "DataVariables","Temperature");

% Fill outliers
data = filloutliers(data,"linear","movmedian",100,"ThresholdFactor",2.25,...
    "DataVariables","Temperature");

% Smooth input data
data = smoothdata(data,"gaussian",107,"DataVariables","Temperature");