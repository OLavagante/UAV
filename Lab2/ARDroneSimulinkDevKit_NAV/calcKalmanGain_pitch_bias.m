%R = diag([0.1, 0.1]);
R = 0.1;
Q = diag([0.1, 0.1]);
A = [0.0, -1.0; 0.0, 0.0];
B = [1.0;
    0.0];
C = [1.0, 0.0];
D = [0];


ss_pitch = ss(A, B, C, D, -1);
%ss_pitch_discrete = c2d(ss_pitch, sampleTime);

%[kfilter, Lk] = kalman(ss_pitch, Q, R);

kgain = lqe(A,eye(2), C, Q, R);
% disp(kgain)