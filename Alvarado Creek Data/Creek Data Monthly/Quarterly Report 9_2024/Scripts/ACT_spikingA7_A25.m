time_vector4 = 1:length(data_cleaned_smoothed.DateTime3);
p4 = polyfit(time_vector4,data_cleaned_smoothed.RFU3,3);
test_points = polyval(p4,time_vector4);
figure(4);
hold on;
plot(data3.DateTime3,data3.RFU3);
plot(data_cleaned_smoothed.DateTime3,data_cleaned_smoothed.RFU3);
plot(data_cleaned_smoothed.DateTime3,test_points);
legend('Raw Signal','Cleaned and Smoothed','Regression Line n=3');
xlabel('Sample Period = 10 minutes')
ylabel('Tryptophan RFU');
title('Alvarado Creek: Elimination of Anamolous Spiking and Smoothing Aug 7 - Aug 25');
