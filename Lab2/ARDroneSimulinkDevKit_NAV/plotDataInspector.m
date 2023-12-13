addpath Replay\

%% Pitch
% load pitchKF_expD.mat
% load rollKF_expD.mat
load pitchKF_expC.mat

% lim = [28 44];
lim = [15 60];
origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{13}.Values;

figure
plot(origRun{4}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(origRun{5}.Values, LineWidth = 1)
plot(run1{5}.Values,'color',[0 0.4470 0.7410], LineWidth = 1)
plot(run2{5}.Values, LineWidth = 1)
plot(run3{5}.Values, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Different R and Q combinations vs. Vehicle Estimate for Exp. C', FontSize=15)
xlim(lim)

load pitchKF_expE.mat
% load rollKF_expE.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{13}.Values;

figure
plot(origRun{4}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(origRun{5}.Values, LineWidth = 1)
plot(run1{5}.Values, 'color',[0 0.4470 0.7410], LineWidth = 1)
plot(run2{5}.Values, LineWidth = 1)
plot(run3{5}.Values, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Different R and Q combinations vs. Vehicle Estimate for Exp. E', FontSize=15)
xlim(lim)

%% Roll

% load rollKF_expD.mat
load rollKF_expC.mat

lim = [15 60]   ;
origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{14}.Values;

figure
plot(origRun{4}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(origRun{6}.Values, LineWidth = 1)
plot(run1{6}.Values,'color',[0 0.4470 0.7410], LineWidth = 1)
plot(run2{6}.Values, LineWidth = 1)
plot(run3{6}.Values, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Different R and Q combinations vs. Vehicle Estimate for Exp. C', FontSize=15)
xlim(lim)

% load pitchKF_expE.mat
load rollKF_expE.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{14}.Values;

figure
plot(origRun{4}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(origRun{6}.Values, LineWidth = 1)
plot(run1{6}.Values, 'color',[0 0.4470 0.7410], LineWidth = 1)
plot(run2{6}.Values, LineWidth = 1)
plot(run3{6}.Values, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Different R and Q combinations vs. Vehicle Estimate for Exp. E', FontSize=15)
xlim(lim)



















