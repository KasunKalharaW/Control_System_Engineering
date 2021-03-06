%% Conflict Detection TEST

%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 1: Collision between drone 2 and drone 4
%% Conflict between Drone 2 and Drone 4

ConflictDrone2andDrone4 = 0; % Initially No confilct detected

ConflictDrone2andDrone4 = ControlDetectionFunction(tout,PositionXDrone2TEST, PositionYDrone2TEST, PositionXDrone4TEST, PositionYDrone4TEST, ConflictDrone2andDrone4);

    if ConflictDrone2andDrone4 == 1
       % disp('A conflict of collision has been detected between  Drone 2 and Drone 4');
       warningMessage = warning('A conflict of collision has been detected between Drone 2 and Drone 4');
    else 
       disp('No conflict of collision between Drone 2 and Drone 4');
    end
  
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 2: Collision between drone 1 and drone 3
%% Conflict between Drone 1 and Drone 3

ConflictDrone1andDrone3 = 0; % Initially No confilct detected

Drone1Red = 0; % This becomes 1 when the Drone 1 is red
Drone3Red = 0; % This becomes 1 when the Drone 3 is red

ConflictDrone1andDrone3 = ControlDetectionFunction(tout,PositionXDrone1TEST, PositionYDrone1TEST, PositionXDrone3TEST, PositionYDrone3TEST, ConflictDrone1andDrone3);

    if ConflictDrone1andDrone3 == 1
       % disp('A conflict of collision has been detected between Drone 1 and Drone 3');
       warningMessage = warning('A conflict of collision has been detected between Drone 1 and Drone 3');
    else 
       disp('No conflict of collision between Drone 1 and Drone 3');
    end

%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 3: Collision between drone 1 and drone 4
%% Conflict between Drone 1 and Drone 4

ConflictDrone1andDrone4 = 0; % Initially No confilct detected

Drone1Red = 0; % This becomes 1 when the Drone 1 is red
Drone4Red = 0; % This becomes 1 when the Drone 4 is red

ConflictDrone1andDrone4 = ControlDetectionFunction(tout,PositionXDrone1TEST, PositionYDrone1TEST, PositionXDrone4TEST, PositionYDrone4TEST, ConflictDrone1andDrone4);

    if ConflictDrone1andDrone4 == 1
       % disp('A conflict of collision has been detected between Drone 1 and Drone 4');
       warningMessage = warning('A conflict of collision has been detected between Drone 1 and Drone 4');
    else 
       disp('No conflict of collision between Drone 1 and Drone 4');
    end

%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 4: Collision between drone 1 and drone 2
%% Conflict between Drone 1 and Drone 2

ConflictDrone1andDrone2 = 0; % Initially No confilct detected

Drone1Red = 0; % This becomes 1 when the Drone 1 is red
Drone2Red = 0; % This becomes 1 when the Drone 2 is red

ConflictDrone1andDrone2 = ControlDetectionFunction(tout,PositionXDrone1TEST, PositionYDrone1TEST, PositionXDrone2TEST, PositionYDrone2TEST, ConflictDrone1andDrone2);

    if ConflictDrone1andDrone2 == 1
       % disp('A conflict of collision has been detected between Drone 1 and Drone 2');
       warningMessage = warning('A conflict of collision has been detected between Drone 1 and Drone 2');
    else 
       disp('No conflict of collision between Drone 1 and Drone 2');
    end

%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 5: Collision between drone 3 and drone 4
%% Conflict between Drone 3 and Drone 4

ConflictDrone3andDrone4 = 0; % Initially No confilct detected

Drone3Red = 0; % This becomes 1 when the Drone 3 is red
Drone4Red = 0; % This becomes 1 when the Drone 4 is red

ConflictDrone3andDrone4 = ControlDetectionFunction(tout,PositionXDrone3TEST, PositionYDrone3TEST, PositionXDrone4TEST, PositionYDrone4TEST, ConflictDrone3andDrone4);

    if ConflictDrone3andDrone4 == 1
       % disp('A conflict of collision has been detected between Drone 3 and Drone 4');
       warningMessage = warning('A conflict of collision has been detected between Drone 3 and Drone 4');
    else 
       disp('No conflict of collision between Drone 3 and Drone 4');
    end  

%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 6: Collision between drone 2 and drone 3
%% Conflict between Drone 2 and Drone 3

ConflictDrone2andDrone3 = 0; % Initially No confilct detected

Drone2Red = 0; % This becomes 1 when the Drone 2 is red
Drone3Red = 0; % This becomes 1 when the Drone 3 is red

ConflictDrone2andDrone3 = ControlDetectionFunction(tout,PositionXDrone2TEST, PositionYDrone2TEST, PositionXDrone3TEST, PositionYDrone3TEST, ConflictDrone2andDrone3);

    if ConflictDrone2andDrone3 == 1
       % disp('A conflict of collision has been detected between Drone 2 and Drone 3');
       warningMessage = warning('A conflict of collision has been detected between Drone 2 and Drone 3');
    else 
       disp('No conflict of collision between Drone 2 and Drone 3');
    end    
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 7: Collision between drone 1 and drone 5
%% Conflict between Drone 1 and Drone 5

ConflictDrone1andDrone5 = 0; % Initially No confilct detected

Drone1Red = 0; % This becomes 1 when the Drone 1 is red
Drone5Red = 0; % This becomes 1 when the Drone 5 is red

ConflictDrone1andDrone5 = ControlDetectionFunction(tout,PositionXDrone1TEST, PositionYDrone1TEST, PositionXDrone5TEST, PositionYDrone5TEST, ConflictDrone1andDrone5);

    if ConflictDrone1andDrone5 == 1
       % disp('A conflict of collision has been detected between Drone 1 and Drone 5');
       warningMessage = warning('A conflict of collision has been detected between Drone 1 and Drone 5');
    else 
       disp('No conflict of collision between Drone 1 and Drone 5');
    end    
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 8: Collision between drone 3 and drone 5
%% Conflict between Drone 3 and Drone 5

ConflictDrone3andDrone5 = 0; % Initially No confilct detected

Drone3Red = 0; % This becomes 1 when the Drone 3 is red
Drone5Red = 0; % This becomes 1 when the Drone 5 is red

ConflictDrone3andDrone5 = ControlDetectionFunction(tout,PositionXDrone3TEST, PositionYDrone3TEST, PositionXDrone5TEST, PositionYDrone5TEST, ConflictDrone3andDrone5);

    if ConflictDrone3andDrone5 == 1
       % disp('A conflict of collision has been detected between Drone 3 and Drone 5');
       warningMessage = warning('A conflict of collision has been detected between Drone 3 and Drone 5');
    else 
       disp('No conflict of collision between Drone 3 and Drone 5');
    end    
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 9: Collision between drone 1 and drone 7
%% Conflict between Drone 1 and Drone 7

ConflictDrone1andDrone7 = 0; % Initially No confilct detected

Drone1Red = 0; % This becomes 1 when the Drone 1 is red
Drone7Red = 0; % This becomes 1 when the Drone 7 is red

ConflictDrone1andDrone7 = ControlDetectionFunction(tout,PositionXDrone1TEST, PositionYDrone1TEST, PositionXDrone7TEST, PositionYDrone7TEST, ConflictDrone1andDrone7);

    if ConflictDrone1andDrone7 == 1
       % disp('A conflict of collision has been detected between Drone 1 and Drone 7');
       warningMessage = warning('A conflict of collision has been detected between Drone 1 and Drone 7');
    else 
       disp('No conflict of collision between Drone 1 and Drone 7');
    end
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 10: Collision between drone 3 and drone 7
%% Conflict between Drone 3 and Drone 7

ConflictDrone3andDrone7 = 0; % Initially No confilct detected

Drone3Red = 0; % This becomes 1 when the Drone 3 is red
Drone7Red = 0; % This becomes 1 when the Drone 7 is red

ConflictDrone3andDrone7 = ControlDetectionFunction(tout,PositionXDrone3TEST, PositionYDrone3TEST, PositionXDrone7TEST, PositionYDrone7TEST, ConflictDrone3andDrone7);

    if ConflictDrone3andDrone7 == 1
       % disp('A conflict of collision has been detected between Drone 3 and Drone 7');
       warningMessage = warning('A conflict of collision has been detected between Drone 3 and Drone 7');
    else 
       disp('No conflict of collision between Drone 3 and Drone 7');
    end
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 11: Collision between drone 5 and drone 7
%% Conflict between Drone 5 and Drone 7

ConflictDrone5andDrone7 = 0; % Initially No confilct detected

Drone5Red = 0; % This becomes 1 when the Drone 5 is red
Drone7Red = 0; % This becomes 1 when the Drone 7 is red

ConflictDrone5andDrone7 = ControlDetectionFunction(tout,PositionXDrone5TEST, PositionYDrone5TEST, PositionXDrone7TEST, PositionYDrone7TEST, ConflictDrone5andDrone7);

    if ConflictDrone5andDrone7 == 1
       % disp('A conflict of collision has been detected between Drone 5 and Drone 7');
       warningMessage = warning('A conflict of collision has been detected between Drone 5 and Drone 7');
    else 
       disp('No conflict of collision between Drone 5 and Drone 7');
    end   
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 12: Collision between drone 1 and drone 6
%% Conflict between Drone 1 and Drone 6

ConflictDrone1andDrone6 = 0; % Initially No confilct detected

Drone1Red = 0; % This becomes 1 when the Drone 1 is red
Drone6Red = 0; % This becomes 1 when the Drone 6 is red

ConflictDrone1andDrone6 = ControlDetectionFunction(tout,PositionXDrone1TEST, PositionYDrone1TEST, PositionXDrone6TEST, PositionYDrone6TEST, ConflictDrone1andDrone6);

    if ConflictDrone1andDrone6 == 1
       % disp('A conflict of collision has been detected between Drone 1 and Drone 6');
       warningMessage = warning('A conflict of collision has been detected between Drone 1 and Drone 6');
    else 
       disp('No conflict of collision between Drone 1 and Drone 6');
    end   
    
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 13: Collision between drone 3 and drone 6
%% Conflict between Drone 3 and Drone 6

ConflictDrone3andDrone6 = 0; % Initially No confilct detected

Drone3Red = 0; % This becomes 1 when the Drone 3 is red
Drone6Red = 0; % This becomes 1 when the Drone 6 is red

ConflictDrone3andDrone6 = ControlDetectionFunction(tout,PositionXDrone3TEST, PositionYDrone3TEST, PositionXDrone6TEST, PositionYDrone6TEST, ConflictDrone3andDrone6);

    if ConflictDrone3andDrone6 == 1
       % disp('A conflict of collision has been detected between Drone 3 and Drone 6');
       warningMessage = warning('A conflict of collision has been detected between Drone 3 and Drone 6');
    else 
       disp('No conflict of collision between Drone 3 and Drone 6');
    end 
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 14: Collision between drone 4 and drone 6
%% Conflict between Drone 4 and Drone 6

ConflictDrone4andDrone6 = 0; % Initially No confilct detected

Drone4Red = 0; % This becomes 1 when the Drone 4 is red
Drone6Red = 0; % This becomes 1 when the Drone 6 is red

ConflictDrone4andDrone6 = ControlDetectionFunction(tout,PositionXDrone4TEST, PositionYDrone4TEST, PositionXDrone6TEST, PositionYDrone6TEST, ConflictDrone4andDrone6);

    if ConflictDrone4andDrone6 == 1
       % disp('A conflict of collision has been detected between Drone 4 and Drone 6');
       warningMessage = warning('A conflict of collision has been detected between Drone 4 and Drone 6');
    else 
       disp('No conflict of collision between Drone 4 and Drone 6');
    end  
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 15: Collision between drone 2 and drone 5
%% Conflict between Drone 2 and Drone 5

ConflictDrone2andDrone5 = 0; % Initially No confilct detected

Drone2Red = 0; % This becomes 1 when the Drone 2 is red
Drone5Red = 0; % This becomes 1 when the Drone 5 is red

ConflictDrone2andDrone5 = ControlDetectionFunction(tout,PositionXDrone2TEST, PositionYDrone2TEST, PositionXDrone5TEST, PositionYDrone5TEST, ConflictDrone2andDrone5);

    if ConflictDrone2andDrone5 == 1
       % disp('A conflict of collision has been detected between Drone 2 and Drone 5');
       warningMessage = warning('A conflict of collision has been detected between Drone 2 and Drone 5');
    else 
       disp('No conflict of collision between Drone 2 and Drone 5');
    end  
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 16: Collision between drone 2 and drone 7
%% Conflict between Drone 2 and Drone 7

ConflictDrone2andDrone7 = 0; % Initially No confilct detected

Drone2Red = 0; % This becomes 1 when the Drone 2 is red
Drone7Red = 0; % This becomes 1 when the Drone 7 is red

ConflictDrone2andDrone7 = ControlDetectionFunction(tout,PositionXDrone2TEST, PositionYDrone2TEST, PositionXDrone7TEST, PositionYDrone7TEST, ConflictDrone2andDrone7);

    if ConflictDrone2andDrone7 == 1
       % disp('A conflict of collision has been detected between Drone 2 and Drone 7');
       warningMessage = warning('A conflict of collision has been detected between Drone 2 and Drone 7');
    else 
       disp('No conflict of collision between Drone 2 and Drone 7');
    end  
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 17: Collision between drone 2 and drone 8
%% Conflict between Drone 2 and Drone 8

ConflictDrone2andDrone8 = 0; % Initially No confilct detected

Drone2Red = 0; % This becomes 1 when the Drone 2 is red
Drone8Red = 0; % This becomes 1 when the Drone 8 is red

ConflictDrone2andDrone8 = ControlDetectionFunction(tout,PositionXDrone2TEST, PositionYDrone2TEST, PositionXDrone8TEST, PositionYDrone8TEST, ConflictDrone2andDrone8);

    if ConflictDrone2andDrone8 == 1
       % disp('A conflict of collision has been detected between Drone 2 and Drone 8');
       warningMessage = warning('A conflict of collision has been detected between Drone 2 and Drone 8');
    else 
       disp('No conflict of collision between Drone 2 and Drone 8');
    end  
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 18: Collision between drone 5 and drone 8
%% Conflict between Drone 5 and Drone 8

ConflictDrone5andDrone8 = 0; % Initially No confilct detected

Drone5Red = 0; % This becomes 1 when the Drone 5 is red
Drone8Red = 0; % This becomes 1 when the Drone 8 is red

ConflictDrone5andDrone8 = ControlDetectionFunction(tout,PositionXDrone5TEST, PositionYDrone5TEST, PositionXDrone8TEST, PositionYDrone8TEST, ConflictDrone5andDrone8);

    if ConflictDrone5andDrone8 == 1
       % disp('A conflict of collision has been detected between Drone 5 and Drone 8');
       warningMessage = warning('A conflict of collision has been detected between Drone 5 and Drone 8');
    else 
       disp('No conflict of collision between Drone 5 and Drone 8');
    end  
%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 19: Collision between drone 7 and drone 8
%% Conflict between Drone 7 and Drone 8

ConflictDrone7andDrone8 = 0; % Initially No confilct detected

Drone7Red = 0; % This becomes 1 when the Drone 7 is red
Drone8Red = 0; % This becomes 1 when the Drone 8 is red

ConflictDrone7andDrone8 = ControlDetectionFunction(tout,PositionXDrone7TEST, PositionYDrone7TEST, PositionXDrone8TEST, PositionYDrone8TEST, ConflictDrone7andDrone8);

    if ConflictDrone7andDrone8 == 1
       % disp('A conflict of collision has been detected between Drone 7 and Drone 8');
       warningMessage = warning('A conflict of collision has been detected between Drone 7 and Drone 8');
    else 
       disp('No conflict of collision between Drone 7 and Drone 8');
    end                                    