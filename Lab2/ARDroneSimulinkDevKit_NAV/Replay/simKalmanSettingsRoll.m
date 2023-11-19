%Setup Vars for Kalman Filter Implementation


%Kalman Filter
A = [0];
B = [1];
C = [1];
D = [0];

sys = ss(A,B,C,D);

Q = ; %Covariance of the x-axis gyroscope
R = ; %Variance of the Roll Inclinometer

