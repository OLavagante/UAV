addpath ExpRuns\

load("ExpA.mat")

s = 1*200;

dataAcce = sens_acce.signals.values(s:end,:)*(10^-2);
dataGyro = sens_gyro.signals.values(s:end,:)*(pi/180);

meanAcce = mean(dataAcce);
meanGyro = mean(dataGyro);

covAcce = cov(dataAcce);
covGyro = cov(dataGyro);

% figure
% plot(sens_acce.time, sens_acce.signals.values*(10^-2))
% xlabel('Time [s]', FontSize=13); ylabel('Acceleration [m/s^{2}]', FontSize=13)
% title('Accelerometer Data for Exp. A', FontSize=15)
% hold on; xline(1, 'k--'); xline(40.7450, 'k--'); hold off
% legend(['x-axis'; 'y-axis';'z-axis';'';''])
% grid on
% 
% figure
% plot(sens_gyro.time, sens_gyro.signals.values*(pi/180))
% xlabel('Time [s]', FontSize=13); ylabel('Angular Velocity [rad/s]', FontSize=13)
% title('Rate Gyro Data for Exp. A', FontSize=15)
% hold on; xline(1, 'k--'); xline(40.7450, 'k--'); hold off
% legend(['x-axis'; 'y-axis';'z-axis';'';''])
% grid on