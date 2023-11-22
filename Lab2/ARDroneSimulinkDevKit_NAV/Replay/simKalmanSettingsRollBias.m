%% Setup Vars for Kalman Filter Implementation

%Kalman Filter
A = [[0 -1]; [0 0]];
B = [1; 0];
C = [1 0];
D = 0;

ss_roll = ss(A,B,C,D);

Q = [0.0012 0; 0 0.001]; %Variance of the x-axis gyroscope
R = 1; %Variance of the Roll Inclinometer

ss_roll_discrete = c2d(ss_roll, sampleTime);

% [kfilter, Lk] = kalman(ss_pitch_bias, Q, R, 0);

Lk = lqe(A, 1, C, Q, R);
% disp(kgain)