addpath ExpRuns\

load("ExpC.mat")

s = 4000; e = 12000;

dataAcce3 = sens_acce.signals.values(s:e,:);
dataGyro3 = sens_gyro.signals.values(s:e,:);

meanAcce3 = mean(dataAcce3);
meanGyro3 = mean(dataGyro3);

covAcce3 = cov(dataAcce3);
covGyro3 = cov(dataGyro3);