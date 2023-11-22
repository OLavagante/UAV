%% Setup Vars for Kalman Filter Implementation

%Kalman Filter
A = [0];
B = [1];
C = [1];
D = [0];

ss_pitch = ss(A,B,C,D);

Q = 0.0012; %Variance of the y-axis gyroscope
R = 9.8949e-05; %Variance of the Pitch Inclinometer

ss_pitch_discrete = c2d(ss_pitch, sampleTime);

[kfilter, Lk] = kalman(ss_pitch, Q, R, 0);

% kgain = lqe(A, 1, C, Q, R);
% disp(kgain)