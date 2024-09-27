figure(3);
hold on
plot(time_vector3,y2, Color='blue');
plot(time_vector3,NBB_tdata, Color='red');
plot(time_vector3,xD(1:length(time_vector3)), Color='black');
plot(time_vector3,xD_LR(1:length(time_vector3)),Color='magenta');
xlabel('17 days, 20 hours, 25 minutes window, sample period = 10 minutes, sample frequency = 0.00167 Hz')
ylabel('Tryptophan RFU');
legend('June 20-July 8 (wiper on, no skew)','Regression Line','Aug 30-Sep 17 (wiper off, corrected for biofilm buildup','Regression Line');
title('Trpytophan RFU Alvarado Creek Corrected Signal (no biofilm skew) and Non-Skewed Signal');