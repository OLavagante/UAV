addpath ExpRuns\

load("ExpC.mat")

s = 20*200; e = 60*200;

dataAcce3 = sens_acce.signals.values(s:e,:)*(10^-2);
dataGyro3 = sens_gyro.signals.values(s:e,:)*(pi/180);

meanAcce3 = mean(dataAcce3);
meanGyro3 = mean(dataGyro3);

covAcce3 = cov(dataAcce3);
covGyro3 = cov(dataGyro3);

figure
plot(sens_acce.time, sens_acce.signals.values*(10^-2))
xlabel('Time [s]', FontSize=13); ylabel('Acceleration [m/s^{2}]', FontSize=13)
title('Accelerometer Data for Exp. C', FontSize=15)
hold on; xline(20, 'k--'); xline(60, 'k--'); hold off
legend(['x-axis'; 'y-axis';'z-axis';'';''])
grid on
xlim([10 63]); ylim([-11 1])

figure
plot(sens_gyro.time, sens_gyro.signals.values*(pi/180))
xlabel('Time [s]', FontSize=13); ylabel('Angular Velocity [rad/s]', FontSize=13)
title('Rate Gyro Data for Exp. C', FontSize=15)
hold on; xline(20, 'k--'); xline(60, 'k--'); hold off
legend(['x-axis'; 'y-axis';'z-axis';'';''])
grid on
xlim([10 63]); ylim([-0.4 0.4])