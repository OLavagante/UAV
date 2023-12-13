addpath Replay\

%% Pitch
load pitchKFnB_expD.mat
% load rollKFnB_expD.mat

lim = [28 44];
origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{5}.Values;
time = origRun{6}.Values.Time;

figure
plot(origRun{7}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(time,origRun{6}.Values.Data(:,1), LineWidth = 1)
plot(time,run1{6}.Values.Data(:,1),'color',[0 0.4470 0.7410], LineWidth = 1)
plot(time,run2{6}.Values.Data(:,1), LineWidth = 1)
plot(time,run3{6}.Values.Data(:,1), LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'R=0.0012, Q(1,1)=4.4e-5', 'R=Q(1,1)=4.4e-5', 'R=10*Q(1,1)=4.4e-4', 'R=100*Q(1,1)=4.4e-3')
title('Different R and Q(1,1) combinations vs. Vehicle Estimate for Exp. D', FontSize=15)
xlim(lim)

load pitchKFnB_expE.mat
% load rollKFnB_expE.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{5}.Values;
time = origRun{6}.Values.Time;

figure
plot(origRun{7}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(time,origRun{6}.Values.Data(:,1), LineWidth = 1)
plot(time,run1{6}.Values.Data(:,1), 'color',[0 0.4470 0.7410], LineWidth = 1)
plot(time,run2{6}.Values.Data(:,1), LineWidth = 1)
plot(time,run3{6}.Values.Data(:,1), LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'R=0.0012, Q(1,1)=4.4e-5', 'R=Q(1,1)=4.4e-5', 'R=10*Q(1,1)=4.4e-4', 'R=100*Q(1,1)=4.4e-3')
title('Different R and Q(1,1) combinations vs. Vehicle Estimate for Exp. E', FontSize=15)
xlim(lim)

%% Roll
2.5e-4
6.6e-5

load rollKFnB_expD.mat

lim = [28 44];
origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{9}.Values;
time = origRun{4}.Values.Time;

figure
plot(origRun{5}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(time,origRun{4}.Values.Data(:,1), LineWidth = 1)
plot(time,run1{4}.Values.Data(:,1),'color',[0 0.4470 0.7410], LineWidth = 1)
plot(time,run2{4}.Values.Data(:,1), LineWidth = 1)
plot(time,run3{4}.Values.Data(:,1), LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'R=2.5e-4, Q(1,1)=6.6e-5', 'R=Q(1,1)=6.6e-5', 'R=10*Q(1,1)=6.6e-4', 'R=100*Q(1,1)=6.6e-3')
title('Different R and Q(1,1) combinations vs. Vehicle Estimate for Exp. D', FontSize=15)
xlim(lim)

load rollKFnB_expE.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

droneAngles = origRun{9}.Values;
time = origRun{4}.Values.Time;

figure
plot(origRun{5}.Values,'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(droneAngles,'r', LineWidth = 1)
plot(time,origRun{4}.Values.Data(:,1), LineWidth = 1)
plot(time,run1{4}.Values.Data(:,1), 'color',[0 0.4470 0.7410], LineWidth = 1)
plot(time,run2{4}.Values.Data(:,1), LineWidth = 1)
plot(time,run3{4}.Values.Data(:,1), LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'R=2.5e-4, Q(1,1)=6.6e-5', 'R=Q(1,1)=6.6e-5', 'R=10*Q(1,1)=6.6e-4', 'R=100*Q(1,1)=6.6e-3')
title('Different R and Q(1,1) combinations vs. Vehicle Estimate for Exp. E', FontSize=15)
xlim(lim)
