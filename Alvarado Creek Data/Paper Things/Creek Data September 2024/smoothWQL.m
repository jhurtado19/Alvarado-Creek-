% Fill outliers
datareportSep = filloutliers(datareportSep,"pchip",...
    "percentiles",[4 100],"DataVariables","TryptophanRFU");

% Smooth input data
datareportSep = smoothdata(datareportSep,"gaussian",105,...
    "DataVariables","TryptophanRFU");

% Fill outliers
datareportSep = filloutliers(datareportSep,2250,...
    "percentiles",[4 100],"DataVariables","CDOMRFU");

% Smooth input data
datareportSep = smoothdata(datareportSep,...
    "gaussian","SmoothingFactor",0.3,"DataVariables","CDOMRFU");

% Smooth input data
datareportSep = smoothdata(datareportSep,...
    "gaussian","SmoothingFactor",0.25,"DataVariables","Temperature");

% Normalize Data
datareportSep = normalize(datareportSep,...
    "DataVariables",["TryptophanRFU","CDOMRFU","Temperature"]);