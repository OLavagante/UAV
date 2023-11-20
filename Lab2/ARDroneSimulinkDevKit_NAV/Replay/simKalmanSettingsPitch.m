%Setup Vars for Kalman Filter Implementation


%Kalman Filter
A = [0];
B = [1];
C = [1];
D = [0];

sys = ss(A,B,C,D);

Q = 16e-4; %Covariance of the y-axis gyroscope
R = 0.0517; %Variance of the Pitch Inclinometer

sysdPitch = c2d(sys, sampleTime);