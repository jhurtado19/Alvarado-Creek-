% Fill outliers
usgsoct24 = filloutliers(usgsoct24,"linear","gesd","DataVariables","wlvl");

% Smooth input data
usgsoct24 = smoothdata(usgsoct24,"gaussian","SmoothingFactor",0.25,...
    "DataVariables","wlvl");