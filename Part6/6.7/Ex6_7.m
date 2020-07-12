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

L = 0.17;
k = 8.54858e-06;
b = 1.3678e-07;
m = 0.716;
g = 9.81;
%%
attMtx = [L*k, 0, -L*k, 0; 0, L*k, 0, -L*k; b, -b, b, -b; 1, 1, 1, 1];
Ixx = 0.007;
Iyy = 0.007;
Izz = 0.012;
posMtx = [0, -1, 0; 1, 0, 0];
D = [0,0,1;2,0,1;2,2,1;0,2,1;0,0,0];
yaw = [0; 90; 180; -90; 0];