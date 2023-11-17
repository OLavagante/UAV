
%%
%  Cleaning workspace
% bdclose all;
% clear all;
clc

%%
% Adding ARDrone library path 
addpath ../lib; 
%% Simulation parameters

% Flight management system sample time. This is the sample time at which
% the control law is executed. 
FMS.Ts = 0.065; 

% Time delay due to communication between drone and host computer
timeDelay = FMS.Ts*4; 

%% Load Kalman Filter vars into Workspace
simKalmanSettingsRoll;

%% Vehicle model based on linear dynamics

% Loading state space representation of vehicle dynamics
setupARModel; 

%%
% Loading list of waypoints
waypoints = getWaypoints() ;


%% 
% Simulation time
simDT = 0.005 ;

%%
% Loading Simulink model of ARDrone
ARDroneHoverSimKalman;



