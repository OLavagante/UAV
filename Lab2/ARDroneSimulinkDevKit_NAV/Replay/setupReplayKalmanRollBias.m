%% Adding ARDrone library to the path
addpath ../lib/ ; 

sampleTime = 1/200;

%% Load Kalman Filter vars into Workspace
simKalmanSettingsRollBias;

%%
ARDroneReplayKalmanRollBias; 