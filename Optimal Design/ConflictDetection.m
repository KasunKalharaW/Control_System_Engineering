%% Conflict Detection

% Conflict between Drone 2 and Drone 4

ConflictDrone2andDrone4 = 0; % Initially No confilct detected

Drone2Red = 0; % This bewcomes 1 when the Drone 2 is red
Drone4Red = 0; % This bewcomes 1 when the Drone 4 is red

ConflictDrone2andDrone4 = ControlDetectionFunction(tout,PositionXDrone2, PositionYDrone2, PositionXDrone4, PositionYDrone4, ConflictDrone2andDrone4);

    if ConflictDrone2andDrone4 == 1
       % disp('A conflict of collision has been detected between Drone 2 and Drone 4');
       warningMessage = warning('A conflict of collision has been detected between Drone 2 and Drone 4');
    else 
       disp('No conflict of collision between Drone 2 and Drone 4');
    end
