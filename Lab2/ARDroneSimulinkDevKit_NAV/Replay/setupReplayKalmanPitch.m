%% Adding ARDrone library to the path
addpath ../lib/ ; 

sampleTime = 1/200;

%% Load Kalman Filter vars into Workspace
simKalmanSettingsPitch;

%%
ARDroneReplay_V2 ; 