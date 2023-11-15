addpath ExpRuns\

load("ExpA.mat")

s = 1000;

dataAcce = sens_acce.signals.values(s:end,:);
dataGyro = sens_gyro.signals.values(s:end,:);

meanAcce = mean(dataAcce);
meanGyro = mean(dataGyro);

covAcce = cov(dataAcce);
covGyro = cov(dataGyro);