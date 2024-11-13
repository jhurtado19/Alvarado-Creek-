% Smooth input data
WL = smoothdata(WL,"gaussian","SmoothingFactor",0.2,...
    "DataVariables","water_level_ft");

% Normalize Data
WL = normalize(WL,"DataVariables","water_level_ft");