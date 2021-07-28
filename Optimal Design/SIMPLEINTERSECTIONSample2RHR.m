% SIMPLE INTERSECTION: Right-Hand-Rule Sample 2: Collision between drone 1 and drone 3
    
        if (ConflictDrone1andDrone3 == 1)% If there's a collision between drone 1 and drone 3
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)<= s)&&(Drone1Green == 1)
                Drone1.FaceColor = 'r';
                Drone1Red = 1;
                Drone1Orange = 0;
                Drone1Green = 0;
                set(D3on1, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)<= s)&&(Drone3Green == 1)
                Drone3.FaceColor = 'r';
                Drone3Red = 1;
                Drone3Orange = 0;
                Drone3Green = 0;
                set(D1on3, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)< R)&&(Drone3Red == 1)
                    Drone3.FaceColor = o;
                    Drone3Red = 0;
                    Drone3Orange = 1;
                    Drone3Green = 0;
            end
            
            set(D3on1,'Position', [PositionXDrone1(k)+0.5 PositionYDrone1(k)-0.5 0]);
            set(D1on3,'Position', [PositionXDrone3(k)+0.5 PositionYDrone3(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)>R)&&(Drone1Orange == 1)
                Drone1.FaceColor = g;
                Drone1Red = 0;
                Drone1Orange = 0;
                set(D3on1, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)>R)&&(Drone3Orange == 1)
                Drone3.FaceColor = g;
                Drone3Red = 0;
                Drone3Orange = 0;
                set(D1on3, 'Visible', 'off' ) 
            end      
                
        end