%% Setup Vars for Kalman Filter Implementation

%Kalman Filter
A = [[0 -1]; [0 0]];
B = [1; 0];
C = [1 0];
D = 0;

ss_roll = ss(A,B,C,D);

Q = [2.5232e-4 0;
     0 1e-12]; %Variance of the x-axis gyroscope
R = 0.6555e-4; %Variance of the Roll Inclinometer
R = Q(1,1)*1000;

ss_roll_discrete = c2d(ss_roll, sampleTime);

% [kfilter, Lk] = kalman(ss_pitch_bias, Q, R, 0);

Lk = lqe(A, eye(2), C, Q, R);
% disp(kgain)