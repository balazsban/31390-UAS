m = 0.5
L = 0.225
k = 0.01
b = 0.001
kD = 0.01
D = diag([kD, kD, kD])
Ixx = 3e-6
Iyy = 3e-6
Izz = 1e-5
I = diag([Ixx, Iyy, Izz])
g = 9.81
g_vec = [0, 0, -m*g]'
attMtx = [L*k, 0, -L*k, 0; 0, L*k, 0, -L*k; b, -b, b, -b; 1, 1, 1, 1]
posMtx = [0, -1, 0; 1, 0, 0]
tmp = sqrt(m*g/4/k)
omega_e = [tmp, tmp, tmp, tmp]'

% Linearized system at hovering conditions
% states: x, y, z, xdot, ydot, zdot, phi, theta, psi, wx, wy, wz
AAA = [ 0 0 0 1 0 0 0 0 0 0 0 0;
        0 0 0 0 1 0 0 0 0 0 0 0;
        0 0 0 0 0 1 0 0 0 0 0 0;
        0 0 0 -kD 0 0 0 m*9.81 0 0 0 0;
        0 0 0 0 -kD 0 -9.81*m 0 0 0 0 0;
        0 0 0 0 0 -kD 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 1 0 0;
        0 0 0 0 0 0 0 0 0 0 1 0;
        0 0 0 0 0 0 0 0 0 0 0 1;
        0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 0 0 0 0 0 0];
help = sqrt(9.81*m*k);
help2 = sqrt(9.81*m/4/k);
BBB = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; help help help help; 0 0 0 0; 0 0 0 0; 0 0 0 0;
L/Ixx*help 0 -L/Ixx*help 0; 0 L/Iyy*help 0 -L/Iyy*help; 2*b/Izz*help2 -2*b/Izz*help2 2*b/Izz*help2 -2*b/Izz*help2];
CCC = [ 1 0 0 0 0 0 0 0 0 0 0 0;
        0 1 0 0 0 0 0 0 0 0 0 0;
        0 0 1 0 0 0 0 0 0 0 0 0;
        0 0 0 0 0 0 1 0 0 0 0 0;
        0 0 0 0 0 0 0 1 0 0 0 0;
        0 0 0 0 0 0 0 0 1 0 0 0];
DDD = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0];