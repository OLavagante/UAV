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
% load ExpE.mat

s = 1/200*200;
time = sens_acce.time(s:end);
sens_acce = sens_acce.signals.values*(10^-2); %in m/s^2

ax = sens_acce(s:end, 1);
ay = sens_acce(s:end, 2);
az = sens_acce(s:end, 3);

aux = sqrt(ax.^2+ay.^2+az.^2);

calcPitch = zeros(numel(ax), 1);
calcRoll = zeros(numel(ax), 1);

for i=1:numel(aux)
    if aux(i) == 0
        calcPitch(i) = 0;   
    else
        calcPitch(i) = asin(ax(i)./aux(i));
    end

end

for i=1:numel(az)
    if az(i) == 0
        calcRoll(i) = 0;
    else 
        calcRoll(i) = atan(ay(i)./az(i));
    end
end

ss = 20*200;
e = 60*200;

meanBias = [mean(calcPitch(ss:e)) mean(calcRoll(ss:e))]
covBias = [cov(calcPitch(ss:e)) cov(calcRoll(ss:e))]


figure
plot(time, calcPitch); hold on
plot(time, measAngles.signals.values(s:end,1)*pi/180, LineWidth=1); hold off
title('Raw Pitch Inclinometer with bias', FontSize=15)
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate')
grid on
xlim([10 60]); %ylim([-0.15 0.1])

figure
plot(time, calcRoll); hold on
plot(time, measAngles.signals.values(s:end,2)*pi/180,LineWidth=1); hold off
title('Raw Roll Inclinometer with bias', FontSize=15)
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate')
grid on
xlim([10 60]); %ylim([-0.1 0.1])
