addpath Replay\

%% Pitch
load pitchKFnB_expD.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

time = origRun{6}.Values.Time;

figure; hold on
plot(time,origRun{6}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run1{6}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run2{6}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run3{6}.Values.Data(:,2)*1e6, LineWidth = 1)
grid on
ylabel('Angle (x10^{-6}) [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Bias for different R and Q combinations for Exp. D', FontSize=15)


load pitchKFnB_expE.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

time = origRun{6}.Values.Time;

figure; hold on
plot(time,origRun{6}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run1{6}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run2{6}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run3{6}.Values.Data(:,2)*1e6, LineWidth = 1)
grid on
ylabel('Angle (x10^{-6}) [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Bias for different R and Q combinations for Exp. E', FontSize=15)

%% Roll


load rollKFnB_expD.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

time = origRun{4}.Values.Time;

figure; hold on
plot(time,origRun{4}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run1{4}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run2{4}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run3{4}.Values.Data(:,2)*1e6, LineWidth = 1)
grid on
ylabel('Angle (x10^{-6}) [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Bias for different R and Q combinations for Exp. D', FontSize=15)

load rollKFnB_expE.mat

origRun = data{1};
run1 = data{2};
run2 = data{3};
run3 = data{4};

time = origRun{4}.Values.Time;

figure; hold on
plot(time,origRun{4}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run1{4}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run2{4}.Values.Data(:,2)*1e6, LineWidth = 1)
plot(time,run3{4}.Values.Data(:,2)*1e6, LineWidth = 1)
grid on
ylabel('Angle (x10^{-6}) [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Original R and Q', 'R/Q = 1', 'R/Q = 10', 'R/Q = 100')
title('Bias for different R and Q combinations for Exp. E', FontSize=15)

