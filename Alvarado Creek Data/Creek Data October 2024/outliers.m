% Fill outliers
wqloct24 = filloutliers(wqloct24,"linear","gesd","DataVariables","trp");

% Fill outliers
wqloct24 = filloutliers(wqloct24,"center","gesd","ThresholdFactor",0.25,...
    "DataVariables","cdom");

% Fill outliers
wqloct24 = filloutliers(wqloct24,"center","movmedian",558,"ThresholdFactor",2,...
    "DataVariables","temp");