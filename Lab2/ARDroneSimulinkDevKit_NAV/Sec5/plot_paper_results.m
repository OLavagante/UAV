time = out.biasErr.time;
bias_err = out.biasErr.signals.values;
real_pitch_roll = out.ground_truth.signals.values;
estimate_pitch_roll = out.kfest.signals.values;
measured = out.measurment.signals.values;
figure()
plot(time, bias_err)

title('Bias estimation error');
legend({'err_{x}', 'err_{y}', 'err_{z}'});
ylabel('(Ground truth - Estimate) (rad/s)')
xlabel('time (s)')
grid on


figure();

tiledlayout(2, 1)
nexttile
plot(time, measured(:,1));

hold on
hold on
plot(time, estimate_pitch_roll(:,1));
title('Roll estimate')
plot(time, real_pitch_roll(:,1));
xlabel('time (s)');
ylabel('(rad)')

legend({'measured roll', 'ground truth roll', 'KF est. roll'})
grid on
nexttile
plot(time, abs(measured(:,1)-real_pitch_roll(:,1)));
hold on 
plot(time, abs(estimate_pitch_roll(:,1)-real_pitch_roll(:,1)));
title('Roll estimate error vs measurement error')
legend({'measurement error', 'KF estimated error'})
xlabel('time (s)')
ylabel('|err| (rad)')
grid on


figure();

tiledlayout(2, 1)
nexttile
plot(time, measured(:,2));
title('Pitch estimate')
hold on
hold on
plot(time, estimate_pitch_roll(:,2));
plot(time, real_pitch_roll(:,2));
xlabel('time (s)');
ylabel('(rad)')

legend({'measured pitch', 'ground truth pitch', 'KF est. pitch'})
grid on
nexttile
plot(time, abs(measured(:,2)-real_pitch_roll(:,2)));
title('Pitch estimate error vs measurement error')
hold on 
plot(time, abs(estimate_pitch_roll(:,2)-real_pitch_roll(:,2)));
legend({'measurement error', 'KF estimated error'})
xlabel('time (s)')
ylabel('|err| (rad)')
grid on
