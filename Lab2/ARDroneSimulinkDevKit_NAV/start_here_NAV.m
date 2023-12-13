%% =======================================================================
%  Start Here Script

%  =======================================================================
%  bench
%  This script guides the user through examples of both simulations and
%  Wi-Fi control models for the Parrot ARDrone.
%  Authors:
%       David Escobar Sanabria -> descobar@aem.umn.edu
%       Pieter J. Mosterman -> pieter.mosterman@mathworks.com
%  =======================================================================

%%
%  Cleaning workspace
% bdclose all;
% clear all;
% bdclose all;
clc

meanAcce3 = [-0.0108248998661285 0.149142386085094 -9.620196316402833];

%%
disp('This script guides the user through examples of both simulations and');
disp('Wi-Fi control Simulink models for the Parrot ARDrone ');
disp(' '); 

disp('Select one of the following options:'); 
disp('    (1) Simulation'); 
disp('    (2) Wi-Fi control. The computer shoud be connected to the drone'); 
disp('    (3) Replay from stored data'); 

option = input('');

%%
switch option
    case 1
        
        disp('Select one of the following options for simulation:'); 
        disp('    (1) Baseline simulation: The ARDrone block with inputs and scopes to visualize outputs'); 
        disp('    (2) Hover: Vehicle is held at constant position');
        disp('    (3) Waypoint tracking: Vehicle tracks a list of waypoints'); 
        option2 = input(' ');
        
        switch option2
            case 1
                cd simulation; 
                setupBaseModel; 
            case 2
                cd simulation; 
                setupHoverSim; 
            case 3
                cd simulation; 
                setupWPTrackingSim;
            otherwise
                disp('An incorrect option was selected')
                
        end
        
        
    case 2
        disp('Select one of the following options for Wi-Fi control:'); 
        disp('    (1) Hover: Vehicle is held at constant position'); 
        disp('    (2) Kalman Filter: Pitch'); 
        disp('    (3) Kalman Filter: Roll'); 
        disp('    (4) Waypoint tracking: Vehicle tracks a list of waypoints'); 
        option2 = input(' ');
        
        switch option2
            case 1
                cd wifiControl; 
                setupHover; 
                % Building model using RTWT. Install rtwt if not installed 
                % using 'rtwintgt -setup'
                % rtwbuild('ARDroneHover_V2');
            case 2
                disp('Select one of the following options for the Pitch Kalman Filter:');
                disp('  (1) Pitch Estimation Without Bias Compensation');
                disp('  (2) Pitch Estimation With Bias Compensation');
                option3 = input(' ');

                switch option3
                    case 1
                        cd wifiControl;
                        setupKalmanPitch;
                    case 2
                        cd wifiControl;
                        setupKalmanPitchBias;
                    otherwise
                        disp('An incorrect option was selected')
                end
            case 3
                disp('Select one of the following options for the Roll Kalman Filter:');
                disp('  (1) Roll Estimation Without Bias Compensation');
                disp('  (2) Roll Estimation With Bias Compensation');
                option4 = input(' ');

                switch option4
                    case 1
                        cd wifiControl;
                        setupKalmanRoll;
                    case 2
                        cd wifiControl;
                        setupKalmanRollBias;
                    otherwise
                        disp('An incorrect option was selected')
                end
            case 4
                cd wifiControl; 
                setupWPTracking;  
                % Building model using RTWT. Install rtwt if not installed 
                % using 'rtwintgt -setup'
                % rtwbuild('ARDroneWPTracking_V2');
            otherwise
                disp('An incorrect option was selected')
        end
    case 3
        addpath ExpRuns\
        disp('Select one of the following options for Replaying Data:'); 
        disp('    (1) Normal Replay'); 
        disp('    (2) Test Kalman Filter: Pitch'); 
        disp('    (3) Test Kalman Filter: Roll');
        option5 = input(' ');
        
        switch option5
            case 1
                disp('Filename from where navdata will be loaded:'); 
                filename = input(' ','s');
                load(filename)
                cd Replay;
                setupReplay;
            case 2
                disp('Select one of the following options for the Pitch Kalman Filter:');
                disp('  (1) Replay: Pitch Estimation Without Bias Compensation');
                disp('  (2) Replay: Pitch Estimation With Bias Compensation');
                option6 = input(' ');

                switch option6
                    case 1
                        disp('Filename from where navdata will be loaded:'); 
                        filename = input(' ','s');
                        load(filename)
                        cd Replay;
                        setupReplayKalmanPitch;
                    case 2
                        disp('Filename from where navdata will be loaded:'); 
                        filename = input(' ','s');
                        load(filename)
                        cd Replay;
                        setupReplayKalmanPitchBias;
                    otherwise
                        disp('An incorrect option was selected')
                end

            case 3
                disp('Select one of the following options for the Roll Kalman Filter:');
                disp('  (1) Replay: Roll Estimation Without Bias Compensation');
                disp('  (2) Replay: Roll Estimation With Bias Compensation');
                option7 = input(' ');

                switch option7
                    case 1
                        disp('Filename from where navdata will be loaded:'); 
                        filename = input(' ','s');
                        load(filename)
                        cd Replay;
                        setupReplayKalmanRoll;
                    case 2
                        disp('Filename from where navdata will be loaded:'); 
                        filename = input(' ','s');
                        load(filename)
                        cd Replay;
                        setupReplayKalmanRollBias;
                    otherwise
                        disp('An incorrect option was selected')
                end
                
            otherwise
                disp('An incorrect option was selected')
        end
              
        
    otherwise
       disp('An incorrect option was selected')

end





