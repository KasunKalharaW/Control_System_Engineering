% SIMPLE INTERSECTION: Right-Hand-Rule Sample 11: Collision between drone 5 and drone 7
    
        if (ConflictDrone5andDrone7 == 1)% If there's a collision between drone 5 and drone 7
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)<= s)&&(Drone5Green == 1)
                Drone5.FaceColor = 'r';
                Drone5Red = 1;
                Drone5Orange = 0;
                Drone5Green = 0;
                set(D7on5, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)<= s)&&(Drone7Green == 1)
                Drone7.FaceColor = 'r';
                Drone7Red = 1;
                Drone7Orange = 0;
                Drone7Green = 0;
                set(D5on7, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)< R)&&(Drone5Red == 1)
                    Drone5.FaceColor = o;
                    Drone5Red = 0;
                    Drone5Orange = 1;
                    Drone5Green = 0;
            end 

            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)< R)&&(Drone7Red == 1)
                    Drone7.FaceColor = o;
                    Drone7Red = 0;
                    Drone7Orange = 1;
                    Drone7Green = 0;
            end
            
            set(D7on5,'Position', [PositionXDrone5(k)+0.5 PositionYDrone5(k)-0.5 0]);
            set(D5on7,'Position', [PositionXDrone7(k)+0.5 PositionYDrone7(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)>R)&&(Drone5Orange == 1)
                Drone5.FaceColor = g;
                Drone5Red = 0;
                Drone5Orange = 0;
                set(D7on5, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)>R)&&(Drone7Orange == 1)
                Drone7.FaceColor = g;
                Drone7Red = 0;
                Drone7Orange = 0;
                set(D5on7, 'Visible', 'off' ) 
            end      
                
        end