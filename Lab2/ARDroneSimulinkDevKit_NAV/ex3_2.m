addpath ExpRuns\

load("ExpB.mat")

s = 3900; e = 9700;

dataAcce2 = sens_acce.signals.values(s:e,:);
dataGyro2 = sens_gyro.signals.values(s:e,:);

meanAcce2 = mean(dataAcce2);
meanGyro2 = mean(dataGyro2);

covAcce2 = cov(dataAcce2);
covGyro2 = cov(dataGyro2);