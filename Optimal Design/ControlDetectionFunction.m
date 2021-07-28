function ConflictDroneiandDronej = ControlDetectionFunction(t, PositionXi, PositionYi, PositionXj, PositionYj, ConflictDroneiandDronej)
   
    % No more than one agent is allowed in the crtical zone
    r = 1; % Radius of the critical zone
    
    for k = 1:length(t)

        if (sqrt(PositionXi(k)^2 + PositionYi(k)^2)<= r)&& (sqrt(PositionXj(k)^2 + PositionYj(k)^2)<= r)&&(ConflictDroneiandDronej == 0)% Compare the position coordinates of the drones at a given time k
        
            ConflictDroneiandDronej = 1;
            
%                 if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Red == 0)
% %                     VelocityStarX2 = vx20 - 0.1*cosd (theta2);
% %                     VelocityStarY2 = vy20 - 0.1*sind (theta2);
%                 end 
%                 
%                 
%                 if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)<= s)&&(Drone4Red == 0)
% %                     VelocityStarX4 = vx40 + 0.1*cosd (theta4);
% %                     VelocityStarY4 = vy40 + 0.1*sind (theta4);
%                 end   

        end
       
    end
end
