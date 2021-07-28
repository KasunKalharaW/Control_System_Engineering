% SIMPLE INTERSECTION: Right-Hand-Rule Sample 12: Collision between drone 1 and drone 6
    
        if (ConflictDrone1andDrone6 == 1)% If there's a collision between drone 1 and drone 76
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)<= s)&&(Drone1Green == 1)
                Drone1.FaceColor = 'r';
                Drone1Red = 1;
                Drone1Orange = 0;
                Drone1Green = 0;
                set(D6on1, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)<= s)&&(Drone6Green == 1)
                Drone6.FaceColor = 'r';
                Drone6Red = 1;
                Drone6Orange = 0;
                Drone6Green = 0;
                set(D1on6, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)< R)&&(Drone6Red == 1)
                    Drone6.FaceColor = o;
                    Drone6Red = 0;
                    Drone6Orange = 1;
                    Drone6Green = 0;
            end
            
            set(D6on1,'Position', [PositionXDrone1(k)+0.5 PositionYDrone1(k)-0.5 0]);
            set(D1on6,'Position', [PositionXDrone6(k)+0.5 PositionYDrone6(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)>R)&&(Drone1Orange == 1)
                Drone1.FaceColor = g;
                Drone1Red = 0;
                Drone1Orange = 0;
                set(D6on1, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)>R)&&(Drone6Orange == 1)
                Drone6.FaceColor = g;
                Drone6Red = 0;
                Drone6Orange = 0;
                set(D1on6, 'Visible', 'off' ) 
            end      
                
        end