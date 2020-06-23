x0 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]'
y0 = [0, 0, 0, 0, 0, 0]'
omega0 = sqrt(m*9.81/4/k)
u0 = [omega0, omega0, omega0, omega0]'

%% Trim
[xss,uss,yss] = trim('Ex2_1', x0, u0, y0)

%% Linmod
[AA,BB,CC,DD] = linmod('Ex2_1', xss, uss)
