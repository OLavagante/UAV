
%% Cleaning the workspace

bdclose all;
clear all;
close all; 

%% Adding ARDrone library to the path
addpath ../lib/ ; 

%% Load Kalman Filter vars into the Workspace
KalmanRollSettings;

%%
%  Sample time of Simulink model. 
% sampleTime = 0.065;
sampleTime = 1/200;

%%
ARDroneHover_V2 ; 