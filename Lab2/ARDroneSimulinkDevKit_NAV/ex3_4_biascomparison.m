addpath ExpRuns\

% close all

load ExpInclinationData.mat
load ReplayInclinationData.mat
% load ExpA.mat
% % load ReplayExpA.mat
% load ExpB.mat
% load ReplayExpB.mat
% load ExpC.mat
% load ReplayExpC.mat

s = 1/200*200;
time = sens_acce.time(s:end);
sens_acce = sens_acce.signals.values*(10^-2); %in m/s^2

biasA = meanAcce; 
biasA(3) = biasA(3) + 9.8; 

axA = sens_acce(s:end, 1) - biasA(1);
ayA = sens_acce(s:end, 2) - biasA(2);
azA = sens_acce(s:end, 3) - biasA(3);

auxA = sqrt(axA.^2+ayA.^2+azA.^2);

calcPitchA = zeros(numel(axA), 1);
calcRollA = zeros(numel(axA), 1);

for i=1:numel(auxA)
    if auxA(i) == 0
        calcPitchA(i) = 0;   
    else
        calcPitchA(i) = asin(axA(i)./auxA(i));
    end

end

for i=1:numel(azA)
    if azA(i) == 0
        calcRollA(i) = 0;
    else 
        calcRollA(i) = atan(ayA(i)./azA(i));
    end
end

biasC = meanAcce3; 
biasC(3) = biasC(3) + 9.8; 

axC = sens_acce(s:end, 1) - biasC(1);
ayC = sens_acce(s:end, 2) - biasC(2);
azC = sens_acce(s:end, 3) - biasC(3);

auxC = sqrt(axC.^2+ayC.^2+azC.^2);

calcPitchC = zeros(numel(axC), 1);
calcRollC = zeros(numel(axC), 1);

for i=1:numel(auxC)
    if auxC(i) == 0
        calcPitchC(i) = 0;   
    else
        calcPitchC(i) = asin(axC(i)./auxC(i));
    end

end

for i=1:numel(azC)
    if azC(i) == 0
        calcRollC(i) = 0;
    else 
        calcRollC(i) = atan(ayC(i)./azC(i));
    end
end


figure
plot(time, calcPitchA); hold on
plot(time, calcPitchC)
plot(time, calcPitch)
plot(time, measAngles.signals.values(s:end,1)*pi/180, LineWidth=1); hold off
title('Raw Pitch Inclinometer without bias', FontSize=15)
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer A', 'Inclinometer C', 'Inclinometer w/bias', 'Vehicle Estimate')
grid on
% xlim([10 60]); %ylim([-0.15 0.1])

figure
plot(time, calcRollA); hold on
plot(time,calcRollC)
plot(time, calcRoll)
plot(time, measAngles.signals.values(s:end,2)*pi/180,LineWidth=1); hold off
title('Raw Roll Inclinometer without bias', FontSize=15)
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer A', 'Inclinometer C', 'Inclinometer w/bias','Vehicle Estimate')
grid on
% xlim([10 60]); %ylim([-0.1 0.1])
