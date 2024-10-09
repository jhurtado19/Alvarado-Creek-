% Script for generating plot of normalized temperature and tRFU data
% for September 19 - October 7

% Note that this data has already been smoothed and normalized, only use
% this plot when data.mat has been loaded into workspace.

figure()
plot(t_vec,cTemp, 'Color','red');
hold on;
grid on;
plot(t_vec,tRFU, 'Color','blue');
plot(locs1, pks1, 'bo'); % 'ro' specifies red circles
plot(locs2, pks2, 'go'); % 'go' specifies green circles
legend('Temperature','tRFU', 'mean peak time = 11:48 pm','mean peak time = 7:10 am')
xlabel('September 19, 12:00 - Oct 7, 12:00')
ylabel('Normalized, Z-Scored Data')
title('Mean Periodicity of RFU = 24 hrs, Mean Periodicity of cTemp = 23.48 hrs')