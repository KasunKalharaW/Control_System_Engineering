%% Motion Modelling

%% Parameters

% Internal 

    m = 1.38; % Mass of a drone
    bx = 50; % Damping constant 
    by = 50; % Damping constant    

% Velcities

    Vmax = 0.2; % 20 m/s
    Vmin = 0.1/3; % 10/3 m/s
    
% Time constants

    tIntersection = 150; % Maximum Intersection Time
    
% Heading Definition

    theta1 = -180; % Heading of the edge 1
    theta2 = -3*180/4; % Heading of the edge 2
    theta3 = -2*180/4; % Heading of the edge 3
    theta4 = -180/4; % Heading of the edge 4
    theta5 =  2*180; % Heading of the edge 5
    theta6 =  180/4; % Heading of the edge 6
    theta7 =  2*180/4; % Heading of the edge 7
    theta8 =  3*180/4; % Heading of the edge 8

% Velocity Difference Gain

    K1 = 1;
    K2 = 0.25;
    K3 = 0.25;
    K4 = 1;
    
%% Initial Conditions

    % Drone 1:
        vin1 = 0.1; % Initially given velocity magnitude
        x10 = 10; % Initial x-displacement (w.r.t origin)
        y10 =  0; % Initial y-displacement (w.r.t origin)
        vx10 = vin1*cosd (theta1); % Initial x-velocity (w.r.t origin)
        vy10 = vin1*sind (theta1); % Initial y-velocity (w.r.t origin)
        
    % Drone 2:
        vin2 = 0.15; % Initially given velocity magnitude
        x20 = 10; % Initial x-displacement (w.r.t origin)
        y20 = 10; % Initial y-displacement (w.r.t origin)
        vx20 = vin2*cosd (theta2); % Initial x-velocity (w.r.t origin)
        vy20 = vin2*sind (theta2); % Initial y-velocity (w.r.t origin)
        
    % Drone 3:
        vin3 = 0.1; % Initially given velocity magnitude
        x30 =  0; % Initial x-displacement (w.r.t origin)
        y30 = 10; % Initial y-displacement (w.r.t origin)
        vx30 = vin3*cosd (theta3); % Initial x-velocity (w.r.t origin)
        vy30 = vin3*sind (theta3); % Initial y-velocity (w.r.t origin)
        
    % Drone 4:
        vin4 = 0.15; % Initially given velocity magnitude
        x40 = -10; % Initial x-displacement (w.r.t origin)
        y40 = 10; % Initial y-displacement (w.r.t origin)
        vx40 = vin4*cosd (theta4); % Initial x-velocity (w.r.t origin)
        vy40 = vin4*sind (theta4); % Initial y-velocity (w.r.t origin)        
        
    % Drone 5:
        vin5 = 0.1; % Initially given velocity magnitude
        x50 = -10; % Initial x-displacement (w.r.t origin)
        y50 =   0; % Initial y-displacement (w.r.t origin)
        vx50 = vin5*cosd (theta5); % Initial x-velocity (w.r.t origin)
        vy50 = vin5*sind (theta5); % Initial y-velocity (w.r.t origin)
        
    % Drone 6:
        vin6 = 0.15; % Initially given velocity magnitude
        x60 = -10; % Initial x-displacement (w.r.t origin)
        y60 = -10; % Initial y-displacement (w.r.t origin)
        vx60 = vin6*cosd (theta6); % Initial x-velocity (w.r.t origin)
        vy60 = vin6*sind (theta6); % Initial y-velocity (w.r.t origin)
        
    % Drone 7:
        vin7 = 0.1; % Initially given velocity magnitude
        x70 = 0; % Initial x-displacement (w.r.t origin)
        y70 = -10; % Initial y-displacement (w.r.t origin)
        vx70 = vin7*cosd (theta7); % Initial x-velocity (w.r.t origin)
        vy70 = vin7*sind (theta7); % Initial y-velocity (w.r.t origin)
        
    % Drone 8:
        vin8 = 0.15; % Initially given velocity magnitude
        x80 = 10; % Initial x-displacement (w.r.t origin)
        y80 = -10; % Initial y-displacement (w.r.t origin)
        vx80 = vin2*cosd (theta8); % Initial x-velocity (w.r.t origin)
        vy80 = vin2*sind (theta8); % Initial y-velocity (w.r.t origin)
        
%% Motion variables

  % Desired Velocities 
  
    % Initially, 
        % Drone 1
            VelocityStarX1 = vx10;
            VelocityStarY1 = vy10;
        % Drone 2
            VelocityStarX2 = vx20;
            VelocityStarY2 = vy20;
        % Drone 3
            VelocityStarX3 = vx30;
            VelocityStarY3 = vy30;
        % Drone 4
            VelocityStarX4 = vx40;
            VelocityStarY4 = vy40;
        % Drone 5
            VelocityStarX5 = vx50;
            VelocityStarY5 = vy50;
        % Drone 6
            VelocityStarX6 = vx60;
            VelocityStarY6 = vy60;
        % Drone 7
            VelocityStarX7 = vx70;
            VelocityStarY7 = vy70;
        % Drone 8
            VelocityStarX8 = vx80;
            VelocityStarY8 = vy80;           

%% Test Inputs (for trajectory generation)

    % Drone 1
        VelocityStarX1TEST = vx10;
        VelocityStarY1TEST = vy10;

    % Drone 2
        VelocityStarX2TEST = vx20;
        VelocityStarY2TEST = vy20;

    % Drone 3
        VelocityStarX3TEST = vx30;
        VelocityStarY3TEST = vy30;

    % Drone 4
        VelocityStarX4TEST = vx40;
        VelocityStarY4TEST = vy40;
    
    % Drone 5
        VelocityStarX5TEST = vx50;
        VelocityStarY5TEST = vy50;

    % Drone 6
        VelocityStarX6TEST = vx60;
        VelocityStarY6TEST = vy60;

    % Drone 7
        VelocityStarX7TEST = vx70;
        VelocityStarY7TEST = vy70;

    % Drone 8
        VelocityStarX8TEST = vx80;
        VelocityStarY8TEST = vy80;

%% Controlled Velocities

    % Drone 1
        deltaVx1 = 0.1*cosd (theta2); % x velcoity change
        deltaVy1 = 0; % y velcoity change
   
    % Drone 2
        deltaVx2 = 0.12*cosd (theta2); % x velcoity change
        deltaVy2 = 0.12*sind (theta2); % y velcoity change
    
    % Drone 3
        deltaVx3 = 0; % x velcoity change
        deltaVy3 = 0.03*sind (theta3); % y velcoity change
    
    % Drone 4
        deltaVx4 = -0.01*cosd (theta4); % x velcoity change
        deltaVy4 = -0.01*sind (theta4); % y velcoity change  
        
    % Drone 5
        deltaVx5 = 0.02*cosd (theta5); % x velcoity change
        deltaVy5 = 0; % y velcoity change
   
    % Drone 6
        deltaVx6 = -0.13*cosd (theta6); % x velcoity change
        deltaVy6 = -0.13*sind (theta6); % y velcoity change
    
    % Drone 7
        deltaVx7 = 0; % x velcoity change
        deltaVy7 = -0.04*sind (theta7); % y velcoity change
    
    % Drone 8
        deltaVx8 = -0.14*cosd (theta8); % x velcoity change
        deltaVy8 = -0.14*sind (theta8); % y velcoity change  
        
%% Initial Conditions

% Linear Model
    % Drone 1
        X10 = [x10 vx10 0 0]'; % Initial conditions of the x
        Y10 = [y10 vy10 0 0]'; % Initial conditions of the y    
    % Drone 2
        X20 = [x20 vx20 0 0]'; % Initial conditions of the x
        Y20 = [y20 vy20 0 0]'; % Initial conditions of the y        
    % Drone 3
        X30 = [x30 vx30 0 0]'; % Initial conditions of the x
        Y30 = [y30 vy30 0 0]'; % Initial conditions of the y    
    % Drone 4
        X40 = [x40 vx40 0 0]'; % Initial conditions of the x
        Y40 = [y40 vy40 0 0]'; % Initial conditions of the y
    % Drone 5
        X50 = [x50 vx50 0 0]'; % Initial conditions of the x
        Y50 = [y50 vy50 0 0]'; % Initial conditions of the y    
    % Drone 6
        X60 = [x60 vx60 0 0]'; % Initial conditions of the x
        Y60 = [y60 vy60 0 0]'; % Initial conditions of the y        
    % Drone 7
        X70 = [x70 vx70 0 0]'; % Initial conditions of the x
        Y70 = [y70 vy70 0 0]'; % Initial conditions of the y    
    % Drone 8
        X80 = [x80 vx80 0 0]'; % Initial conditions of the x
        Y80 = [y80 vy80 0 0]'; % Initial conditions of the y    