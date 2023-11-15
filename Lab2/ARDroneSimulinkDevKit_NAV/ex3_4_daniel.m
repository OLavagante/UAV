addpath ExpRuns\ExpRuns\
% clear
load("ExpInclinationData.mat")
load ("PitchRollVehicle.mat")
s = 1000;

dataAcce = sens_acce.signals.values(s:end,:);
dataGyro = sens_gyro.signals.values(s:end,:);

meanAcce = mean(dataAcce);
meanGyro = mean(dataGyro);

covAcce = cov(dataAcce);
covGyro = cov(dataGyro);

ax = dataAcce(:, 1);
ay = dataAcce(:, 2);
az = dataAcce(:, 3);

g = sqrt(ax.^2 + ay.^2 + az.^2);
pitch = asind(ax./g);
figure;
plot(pitch)

roll= atand(ay./az);

figure;
plot(roll)

tempo = navdata.time(s:end);

figure;
plot (tempo, roll) 
hold on
grid on
plot(rollVehicle)
title('Roll Inclinometer vs Vehicle estimated Roll')
legend('Inclinometer','Vehicle')


figure;
plot (tempo, pitch) 
hold on
grid on
plot(PitchVehicle)
title('Pitch Inclinometer vs Vehicle estimated Pitch')
legend('Inclinometer','Vehicle')