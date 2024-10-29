function USGS = smoothUSGS(USGS)
	% Fill outliers
	USGS = filloutliers(USGS,"linear","gesd","DataVariables","height");
	% Smooth input data
	USGS = smoothdata(USGS,"gaussian",30,"DataVariables","height");
end