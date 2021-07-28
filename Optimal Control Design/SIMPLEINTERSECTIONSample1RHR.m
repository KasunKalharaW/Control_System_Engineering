%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 1: Collision between drone 2 and drone 4
    
        if (ConflictDrone2andDrone4 == 1)% If there's a collision between drone 2 and drone 4
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Green == 1)
                Drone2.FaceColor = 'r';
                Drone2Red = 1;
                Drone2Orange = 0;
                Drone2Green = 0;
                set(D4on2, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)<= s)&&(Drone4Green == 1)
                Drone4.FaceColor = 'r';
                Drone4Red = 1;
                Drone4Orange = 0;
                Drone4Green = 0;
                set(D2on4, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)< R)&&(Drone2Red == 1)
                    Drone2.FaceColor = o;
                    Drone2Red = 0;
                    Drone2Orange = 1;
                    Drone2Green = 0;
            end 

            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)< R)&&(Drone4Red == 1)
                    Drone4.FaceColor = o;
                    Drone4Red = 0;
                    Drone4Orange = 1;
                    Drone4Green = 0;
            end
            
            set(D4on2,'Position', [PositionXDrone2(k)+0.5 PositionYDrone2(k)-0.5 0]);
            set(D2on4,'Position', [PositionXDrone4(k)+0.5 PositionYDrone4(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)>R)&&(Drone2Orange == 1)
                Drone2.FaceColor = g;
                Drone2Red = 0;
                Drone2Orange = 0;
                set(D4on2, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)>R)&&(Drone4Orange == 1)
                Drone4.FaceColor = g;
                Drone4Red = 0;
                Drone4Orange = 0;
                set(D2on4, 'Visible', 'off' ) 
            end      
                
        end