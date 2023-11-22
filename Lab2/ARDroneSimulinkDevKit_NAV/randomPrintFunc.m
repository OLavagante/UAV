figure

data = expC_klmP;
time = data.time;
plot(time, data.signals.values)
xlabel('Time [s]', FontSize=13); ylabel('Angle [rad]', FontSize=13)
title('Pitch Kalman Filter Implementation for Exp. C', FontSize=15)
% hold on; xline(20, 'k--'); xline(60, 'k--'); hold off
legend('Measurement','KF Estimate','Vehicle Estimate')
grid on
xlim([10 35]); %ylim([]




%% graphs for inclinometer data with and without bias (using exp A mean values)