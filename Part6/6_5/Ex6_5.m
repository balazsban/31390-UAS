% Define constants
FIXED_STEP_SIZE =   0.01;
POS_SUB_DT =        0.01;
ATTI_SUB_DT =       0.01;
IMU_SUB_DT =        0.01;
ODOMETRY_SUB_DT =   0.01;
GAZEBO_SYNC_DT =    0.01;
RAD2DEG =           180/pi;
DEG2RAD =           pi/180;
THRUST_OFFSET =     15;
MAX_ROTOR_VEL =     838;

L = 0.225;
k = 8.54858e-06;
b = 1.3678e-07;
%%
attMtx = [L*k, 0, -L*k, 0; 0, L*k, 0, -L*k; b, -b, b, -b; 1, 1, 1, 1];

