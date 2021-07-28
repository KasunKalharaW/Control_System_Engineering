%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 7: Collision between drone 1 and drone 5
    
        if (ConflictDrone1andDrone5 == 1)% If there's a collision between drone 1 and drone 5
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)<= s)&&(Drone1Green == 1)
                Drone1.FaceColor = 'r';
                Drone1Red = 1;
                Drone1Orange = 0;
                Drone1Green = 0;
                set(D5on1, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)<= s)&&(Drone5Green == 1)
                Drone5.FaceColor = 'r';
                Drone5Red = 1;
                Drone5Orange = 0;
                Drone5Green = 0;
                set(D1on5, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)< R)&&(Drone1Red == 1)
                    Drone1.FaceColor = o;
                    Drone1Red = 0;
                    Drone1Orange = 1;
                    Drone1Green = 0;
            end 

            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)< R)&&(Drone5Red == 1)
                    Drone5.FaceColor = o;
                    Drone5Red = 0;
                    Drone5Orange = 1;
                    Drone5Green = 0;
            end
            
            set(D5on1,'Position', [PositionXDrone1(k)+0.5 PositionYDrone1(k)-0.5 0]);
            set(D1on5,'Position', [PositionXDrone5(k)+0.5 PositionYDrone5(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)>R)&&(Drone1Orange == 1)
                Drone1.FaceColor = g;
                Drone1Red = 0;
                Drone1Orange = 0;
                set(D5on1, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)>R)&&(Drone5Orange == 1)
                Drone5.FaceColor = g;
                Drone5Red = 0;
                Drone5Orange = 0;
                set(D1on5, 'Visible', 'off' ) 
            end      
                
        end