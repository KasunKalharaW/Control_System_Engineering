%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 3: Collision between drone 1 and drone 4
    
        if (ConflictDrone1andDrone4 == 1)% If there's a collision between drone 1 and drone 4
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)<= s)&&(Drone1Green == 1)
                Drone1.FaceColor = 'r';
                Drone1Red = 1;
                Drone1Orange = 0;
                Drone1Green = 0;
                set(D4on1, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)<= s)&&(Drone4Green == 1)
                Drone4.FaceColor = 'r';
                Drone4Red = 1;
                Drone4Orange = 0;
                Drone4Green = 0;
                set(D1on4, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)< R)&&(Drone4Red == 1)
                    Drone4.FaceColor = o;
                    Drone4Red = 0;
                    Drone4Orange = 1;
                    Drone4Green = 0;
            end
            
            set(D4on1,'Position', [PositionXDrone1(k)+0.5 PositionYDrone1(k)-0.5 0]);
            set(D1on4,'Position', [PositionXDrone4(k)+0.5 PositionYDrone4(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)>R)&&(Drone1Orange == 1)
                Drone1.FaceColor = g;
                Drone1Red = 0;
                Drone1Orange = 0;
                set(D4on1, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)>R)&&(Drone4Orange == 1)
                Drone4.FaceColor = g;
                Drone4Red = 0;
                Drone4Orange = 0;
                set(D1on4, 'Visible', 'off' ) 
            end      
                
        end