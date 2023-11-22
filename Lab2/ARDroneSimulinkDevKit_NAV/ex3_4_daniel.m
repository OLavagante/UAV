addpath ExpRuns\
% close all
load("ExpInclinationData.mat")
load ("PitchRollVehicle.mat")
s = 1 * 200;

dataAcce = sens_acce.signals.values(s:end,:);
dataGyro = sens_gyro.signals.values(s:end,:);

ax = dataAcce(:, 1);
ay = dataAcce(:, 2);
az = dataAcce(:, 3);

g = sqrt(ax.^2 + ay.^2 + az.^2);
pitch = asin(ax./g);
roll= atan(ay./az);

tempo = sens_acce.time(s:end);

figure;
plot (tempo, pitch) 
hold on
grid on
plot(PitchVehicle*pi/180)
title('Raw Pitch Inclinometer vs Vehicle Estimated Pitch', FontSize=15)
legend('Inclinometer','Vehicle')
xlabel('Time [s]', FontSize=13); ylabel('Angle [rad]', FontSize=13)
hold off

figure;
plot (tempo, roll) 
hold on
grid on
plot(rollVehicle*pi/180)
title('Raw Roll Inclinometer vs Vehicle Estimated Roll', FontSize=15)
legend('Inclinometer','Vehicle')
xlabel('Time [s]', FontSize=13); ylabel('Angle [rad]', FontSize=13)
hold off
