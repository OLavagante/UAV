%% KF
Lk = 0.316;

tfLP = tf([0 Lk], [1 Lk]);
tfHP = tf([1 0], [1 Lk]);
figure()
bodemag(tfLP, tfHP)
legend('G_{1}', 'G_{2}')
grid on



%% Augmented KF
A = [0 -1; 0  0];
B = [1; 0];
C = [1 0];
D = 0;

Q = diag([1,1]);
R = 1;

L = lqe(A, eye(2), C, Q, R);

%L = [1 ; 1 ]; %POE AQUI O GANHO

A_star = A-L*C; %feedback of the estimate

sysAcce = ss(A_star, L, C, D); %sobreposition principle, gyro = 0
sysGyro = ss(A_star, B, C, D); %sobreposition principle, acce = 0

tfAcce = tf(sysAcce);
tfGyro = tf(sysGyro);

tfLP = tfAcce;
tfHP = tf([1 0 0], tfGyro.Denominator);

figure()
bodemag(tfLP, tfHP);
grid on
legend('G_{LP}', 'G_{HP}')
