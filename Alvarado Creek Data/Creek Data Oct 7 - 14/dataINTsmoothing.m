% Smooth input data
dataINT = smoothdata(dataINT,"gaussian",60,"DataVariables","TryptophanRFU");

% Normalize Data
dataINT = normalize(dataINT,"DataVariables","TryptophanRFU");

% Smooth input data
dataINT = smoothdata(dataINT,"gaussian",49,"DataVariables","CDOMRFU");

% Normalize Data
dataINT = normalize(dataINT,"DataVariables","CDOMRFU");

% Smooth input data
dataINT = smoothdata(dataINT,"gaussian","SmoothingFactor",0.05,...
    "DataVariables","Temperature");

% Normalize Data
dataINT = normalize(dataINT,"DataVariables","Temperature");