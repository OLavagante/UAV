addpath ExpRuns\

close all

% load ExpInclinationData.mat
% load ReplayInclinationData.mat
% load ExpA.mat
% % load ReplayExpA.mat
% load ExpB.mat
% load ReplayExpB.mat
load ExpC.mat
load ReplayExpC.mat
% load ExpD3.mat
% load ExpD1.mat

s = 1/200*200;
time = sens_acce.time(s:end);
sens_acce = sens_acce.signals.values*(10^-2); %in m/s^2

bias = meanAcce3;
bias(3) = bias(3) + 9.8;

ax = sens_acce(s:end, 1) - bias(1);
ay = sens_acce(s:end, 2) - bias(2);
az = sens_acce(s:end, 3) - bias(3);

aux = sqrt(ax.^2+ay.^2+az.^2);

calcPitchNoB = zeros(numel(ax), 1);
calcRollNoB = zeros(numel(ax), 1);

for i=1:numel(aux)
    if aux(i) == 0
        calcPitchNoB(i) = 0;   
    else
        calcPitchNoB(i) = asin(ax(i)./aux(i));
    end

end

for i=1:numel(az)
    if az(i) == 0
        calcRollNoB(i) = 0;
    else 
        calcRollNoB(i) = atan(ay(i)./az(i));
    end
end

ss = 20*200;
e = 60*200;

meanNoBias = [mean(calcPitchNoB(ss:e)) mean(calcRollNoB(ss:e))]
covNoBias = [cov(calcPitchNoB(ss:e)) cov(calcRollNoB(ss:e))]

figure
plot(time, calcPitchNoB); hold on
plot(time, calcPitch)
plot(time, measAngles.signals.values(s:end,1)*pi/180, LineWidth=1); hold off
title('Raw Pitch Inclinometer without bias', FontSize=15)
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer no bias','Inclinometer w/ bias', 'Vehicle Estimate')
grid on
xlim([12 60]); %ylim([-0.15 0.1])

figure
plot(time, calcRollNoB); hold on
plot(time, calcRoll)
plot(time, measAngles.signals.values(s:end,2)*pi/180,LineWidth=1); hold off
title('Raw Roll Inclinometer without bias', FontSize=15)
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer no bias','Inclinometer w/ bias', 'Vehicle Estimate')
grid on
xlim([12 60]); %ylim([-0.1 0.1])
