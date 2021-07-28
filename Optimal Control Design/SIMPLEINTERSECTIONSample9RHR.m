% SIMPLE INTERSECTION: Right-Hand-Rule Sample 9: Collision between drone 1 and drone 7
    
        if (ConflictDrone1andDrone7 == 1)% If there's a collision between drone 1 and drone 7
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)<= s)&&(Drone1Green == 1)
                Drone1.FaceColor = 'r';
                Drone1Red = 1;
                Drone1Orange = 0;
                Drone1Green = 0;
                set(D7on1, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)<= s)&&(Drone7Green == 1)
                Drone7.FaceColor = 'r';
                Drone7Red = 1;
                Drone7Orange = 0;
                Drone7Green = 0;
                set(D1on7, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)< R)&&(Drone7Red == 1)
                    Drone7.FaceColor = o;
                    Drone7Red = 0;
                    Drone7Orange = 1;
                    Drone7Green = 0;
            end
            
            set(D7on1,'Position', [PositionXDrone1(k)+0.5 PositionYDrone1(k)-0.5 0]);
            set(D1on7,'Position', [PositionXDrone7(k)+0.5 PositionYDrone7(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)>R)&&(Drone1Orange == 1)
                Drone1.FaceColor = g;
                Drone1Red = 0;
                Drone1Orange = 0;
                set(D7on1, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)>R)&&(Drone7Orange == 1)
                Drone7.FaceColor = g;
                Drone7Red = 0;
                Drone7Orange = 0;
                set(D1on7, 'Visible', 'off' ) 
            end      
                
        end