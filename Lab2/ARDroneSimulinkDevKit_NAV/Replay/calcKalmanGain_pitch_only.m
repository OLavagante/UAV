R = 1;
Q = 0.1;

A = 0;
B = 1;
C = 1;
D = 0;


ss_pitch = ss(A, B, C, D, 0);

ss_pitch_discrete = c2d(ss_pitch, sampleTime);

[kfilter, Lk] = kalman(ss_pitch, Q, R, 0);

% kgain = lqe(A, 1, C, Q, R);
% disp(kgain)