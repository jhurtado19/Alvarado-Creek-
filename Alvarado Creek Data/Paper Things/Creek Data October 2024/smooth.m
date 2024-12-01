% Smooth input data
wqloct24 = smoothdata(wqloct24,"gaussian","SmoothingFactor",0.05,...
    "DataVariables",["cdom","temp"]);

% Smooth input data
wqloct24 = smoothdata(wqloct24,"gaussian","SmoothingFactor",0.1,...
    "DataVariables","trp");