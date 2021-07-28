% SIMPLE INTERSECTION: Right-Hand-Rule Sample 14: Collision between drone 4 and drone 6
    
        if (ConflictDrone4andDrone6 == 1)% If there's a collision between drone 4 and drone 6
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)<= s)&&(Drone4Green == 1)
                Drone4.FaceColor = 'r';
                Drone4Red = 1;
                Drone4Orange = 0;
                Drone4Green = 0;
                set(D6on4, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)<= s)&&(Drone6Green == 1)
                Drone6.FaceColor = 'r';
                Drone6Red = 1;
                Drone6Orange = 0;
                Drone6Green = 0;
                set(D4on6, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)< R)&&(Drone4Red == 1)
                    Drone4.FaceColor = o;
                    Drone4Red = 0;
                    Drone4Orange = 1;
                    Drone4Green = 0;
            end 

            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)< R)&&(Drone6Red == 1)
                    Drone6.FaceColor = o;
                    Drone6Red = 0;
                    Drone6Orange = 1;
                    Drone6Green = 0;
            end
            
            set(D6on4,'Position', [PositionXDrone4(k)+0.5 PositionYDrone4(k)-0.5 0]);
            set(D4on6,'Position', [PositionXDrone6(k)+0.5 PositionYDrone6(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)>R)&&(Drone4Orange == 1)
                Drone4.FaceColor = g;
                Drone4Red = 0;
                Drone4Orange = 0;
                set(D6on4, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)>R)&&(Drone6Orange == 1)
                Drone6.FaceColor = g;
                Drone6Red = 0;
                Drone6Orange = 0;
                set(D4on6, 'Visible', 'off' ) 
            end      
                
        end