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
THRUST_OFFSET =     0;
%% constants
k = 8.54858e-06;
m = 0.5;
mg = 0.5 * 9.81;
b = 1.3678e-07;
L = 0.17;
attMtx = [L*k, 0, -L*k, 0; 0, L*k, 0, -L*k; b, -b, b, -b; 1, 1, 1, 1]
