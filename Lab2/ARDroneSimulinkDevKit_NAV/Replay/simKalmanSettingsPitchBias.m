%% Setup Vars for Kalman Filter Implementation

%Kalman Filter
A = [0 -1; 0 0];
B = [1; 0];
C = [1 0];
D = 0;

ss_pitch = ss(A,B,C,D);
% 
Q = [11.6166e-4 0; 0 1e-12]; %Variance of the y-axis gyroscope
% R = 0.4418e-04; %Variance of the Pitch Inclinometer

R = 100*Q(1,1);

ss_pitch_discrete = c2d(ss_pitch, sampleTime);

% [kfilter, Lk] = kalman(ss_pitch_bias, Q, R, 0);

Lk = lqe(A, eye(2), C, Q, R);
% disp(kgain)