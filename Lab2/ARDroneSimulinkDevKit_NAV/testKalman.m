
tiledlayout(2,1)
nexttile

plot(out.kalmanTestSim)
grid on
title('Pitch Measurment vs Kalman Filter Estimate ')
legend({'Measurement','KF estimate', 'Ground Truth'})
ylabel('rads')
nexttile
title('Error over time')

plot(out.kalmanTestSim.Time , abs(out.kalmanTestSim.Data(:,1)- out.kalmanTestSim.Data(:,3)))
grid on
hold on


plot(out.kalmanTestSim.Time , abs(out.kalmanTestSim.Data(:,2)- out.kalmanTestSim.Data(:,3)))
ylabel('|Error| (rad)')
legend({'Measurement Error', 'KF Error'})



