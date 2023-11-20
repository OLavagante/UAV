addpath ExpRuns\

load("ExpB.mat")

s = 10*200; e = 60*200;

dataAcce2 = sens_acce.signals.values(s:e,:)*(10^-2);
dataGyro2 = sens_gyro.signals.values(s:e,:)*(pi/180);

meanAcce2 = mean(dataAcce2);
meanGyro2 = mean(dataGyro2);

covAcce2 = cov(dataAcce2);
covGyro2 = cov(dataGyro2);

figure
plot(sens_acce.time, sens_acce.signals.values*(10^-2))
xlabel('Time [s]', FontSize=13); ylabel('Acceleration [m/s^{2}]', FontSize=13)
title('Accelerometer Data for Exp. B', FontSize=15)
hold on; xline(10, 'k--'); xline(60, 'k--'); hold off
legend(['x-axis'; 'y-axis';'z-axis';'';''])
grid on

figure
plot(sens_gyro.time, sens_gyro.signals.values*(pi/180))
xlabel('Time [s]', FontSize=13); ylabel('Angular Velocity [rad/s]', FontSize=13)
title('Rate Gyro Data for Exp. B', FontSize=15)
hold on; xline(10, 'k--'); xline(60, 'k--'); hold off
legend(['x-axis'; 'y-axis';'z-axis';'';''])
grid on