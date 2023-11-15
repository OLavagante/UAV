addpath ExpRuns\
load ExpA.mat

sens_acce = sens_acce.signals.values;

% plot(sens_acce(:,1));
 
% s = 22000;
e = 8000;

ax = sens_acce(10:e, 1);
ay = sens_acce(10:e, 2);
az = sens_acce(10:e, 3);

calcPitch = asind(ax./sqrt(ax.^2+ay.^2+az.^2));
calcRoll = atand(ay./az);

figure
subplot(1,2,1)
plot(calcPitch); hold on
plot(measAngles.signals.values(10:e,1), LineWidth=1); hold off
title('Pitch [Degrees]')
legend('Inclinometer', 'Replayed')

subplot(1,2,2)
plot(calcRoll); hold on
plot(measAngles.signals.values(10:e,2),LineWidth=1); hold off
title('Roll [Degrees]')
legend('Inclinometer', 'Replayed')

offsetPitch = mean(measAngles.signals.values(1:numel(calcPitch),1)-calcPitch);
offsetRoll = mean(measAngles.signals.values(1:numel(calcRoll),2)-calcRoll);

offsetPitch
offsetRoll




