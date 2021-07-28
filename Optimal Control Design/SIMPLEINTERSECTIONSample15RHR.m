%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 15: Collision between drone 2 and drone 5
    
        if (ConflictDrone2andDrone5 == 1)% If there's a collision between drone 2 and drone 5
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Green == 1)
                Drone2.FaceColor = 'r';
                Drone2Red = 1;
                Drone2Orange = 0;
                Drone2Green = 0;
                set(D5on2, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)<= s)&&(Drone5Green == 1)
                Drone5.FaceColor = 'r';
                Drone5Red = 1;
                Drone5Orange = 0;
                Drone5Green = 0;
                set(D2on5, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)< R)&&(Drone5Red == 1)
                    Drone5.FaceColor = o;
                    Drone5Red = 0;
                    Drone5Orange = 1;
                    Drone5Green = 0;
            end
            
            set(D5on2,'Position', [PositionXDrone2(k)+0.5 PositionYDrone2(k)-0.5 0]);
            set(D2on5,'Position', [PositionXDrone5(k)+0.5 PositionYDrone5(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)>R)&&(Drone2Orange == 1)
                Drone2.FaceColor = g;
                Drone2Red = 0;
                Drone2Orange = 0;
                set(D5on2, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)>R)&&(Drone5Orange == 1)
                Drone5.FaceColor = g;
                Drone5Red = 0;
                Drone5Orange = 0;
                set(D2on5, 'Visible', 'off' ) 
            end      
                
        end