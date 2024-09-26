data_vector = tryas17.RFU;
time_vector = tryas17.DateTime;

data_interpolated = filloutliers(data_vector, "next");
subset = data_interpolated(1:1700);
subset_interpolated = filloutliers(subset, "next");
subset_time = 1:length(subset);

plot(subset_time,subset_interpolated);

data_interpolated(1:1700) = subset_interpolated;

plot(time_vector,data_vector);
hold;
plot(time_vector,data_interpolated, Color='red');
