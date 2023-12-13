addpath ..\Replay\
load paperKF_expE.mat

%% Pitch
lim = [28 44];


figure; hold on
subplot(2,1,1)
plot(data{10}.Values, 'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(data{4}.Values,'r', LineWidth = 1)
plot(data{12}.Values, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'KF Estimate')
title('Kalman Filter Pitch Estimate for Exp. E', FontSize=15)
xlim(lim)

%% Roll
subplot(2,1,2)
plot(data{11}.Values, 'Color', [0.85, 0.85, 0.85], LineWidth = 0.25); hold on
plot(data{5}.Values,'r', LineWidth = 1)
plot(data{13}.Values, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Inclinometer', 'Vehicle Estimate', 'KF Estimate')
title('Kalman Filter Roll Estimate for Exp. E', FontSize=15)
xlim(lim)

%% Bias
figure
plot(data{6}.Values.Time, data{6}.Values.Data, LineWidth = 1)
grid on
ylabel('Angle [rad]', FontSize=13); xlabel('Time [s]', FontSize=13)
legend('Bias 1', 'Bias 2', 'Bias 3')
title('Kalman Filter Bias Estimate for Exp. E', FontSize=15)

