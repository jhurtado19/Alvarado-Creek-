% Fill outliers
WQL = filloutliers(WQL,"linear","movmedian",40,"DataVariables","Temperature");

% Smooth input data
WQL = smoothdata(WQL,"gaussian","SmoothingFactor",0.15,...
    "DataVariables","Temperature");

% Fill outliers
WQL = filloutliers(WQL,"linear","gesd","DataVariables","CDOMRFU");

% Smooth input data
WQL = smoothdata(WQL,"gaussian","SmoothingFactor",0.25,"DataVariables","CDOMRFU");

% Fill outliers
WQL = filloutliers(WQL,"center","gesd","ThresholdFactor",0.25,...
    "DataVariables","TryptophanRFU");

% Smooth input data
WQL = smoothdata(WQL,"gaussian","SmoothingFactor",0.35,...
    "DataVariables","TryptophanRFU");