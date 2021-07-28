%% Drone Subssytem Modelling

%% Assign the parameter values of the Quadcopter Simulink model.

g  = 9.81;

% Experimented constants
aTheta = -10.1041;
aPsi = 10.5129;

m = 1.68;
r = 2;
l = 1;

b1 = l/m*r^2;
b2 = l/m*r^2;

Ts = 0.001;
%% Linearised Model

% Ax = [1 Ts g*Ts^2/2  0;
%       0 1  g*Ts      0;
%       0 0  1         0;
%       0 0  0         1];
%   
% Bx = [0;0;aTheta*Ts;0];

Ax = [0 1  0   0;
      0 0  0   g;
      0 0  0   1;
      0 0  0  0];
  
Bx = [0;0;0;b1];

Cvx = [0 1 0 0];
Cpx = [1 0 0 0];

Dx = zeros(1,1);

% Ay = [1 Ts g*Ts^2/2  0;
%       0 1  g*Ts      0;
%       0 0  1         0;
%       0 0  0         1];
%   
% By = [0;0;aPsi*Ts;0];

Ay = [0 1  0   0;
      0 0  0   g;
      0 0  0   1;
      0 0  0   0];
  
By = [0;0;0;b2];

Cvy = [0 1 0 0];
Cpy = [1 0 0 0];

Dy = zeros(1,1);

%% Simulate the linear model.
% sim('DroneSubsystem');

