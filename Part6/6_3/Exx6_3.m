%%

% Define constants
FIXED_STEP_SIZE =   0.01;
POS_SUB_DT =        0.01;
ATTI_SUB_DT =       0.01;
IMU_SUB_DT =        0.01;
ODOMETRY_SUB_DT =   0.01;
GAZEBO_SYNC_DT =    0.01;
RAD2DEG =           180/pi;
DEG2RAD =           pi/180;
% THRUST_OFFSET =     15;
THRUST_OFFSET =     0;
%% constants
k = 8.54858e-06;
m = 0.716;
mg = 0.716 * 9.81;

mat = [0 -1 0; 1 0 0];