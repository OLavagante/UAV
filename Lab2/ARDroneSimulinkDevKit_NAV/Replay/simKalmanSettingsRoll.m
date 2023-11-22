%% Setup Vars for Kalman Filter Implementation


%Kalman Filter
A = [0];
B = [1];
C = [1];
D = [0];

ss_roll = ss(A,B,C,D);

Q = 0.0020; %Variance of the x-axis gyroscope
R = 1.1099e-04; %Variance of the Roll Inclinometer

ss_roll_discrete = c2d(ss_roll, sampleTime);

[kfilter, Lk] = kalman(ss_roll, Q, R, 0);

% kgain = lqe(A, 1, C, Q, R);
% disp(kgain)