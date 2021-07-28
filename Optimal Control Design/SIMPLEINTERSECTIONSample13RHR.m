% SIMPLE INTERSECTION: Right-Hand-Rule Sample 13: Collision between drone 3 and drone 6
    
        if (ConflictDrone3andDrone6 == 1)% If there's a collision between drone 3 and drone 6
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)<= s)&&(Drone3Green == 1)
                Drone3.FaceColor = 'r';
                Drone3Red = 1;
                Drone3Orange = 0;
                Drone3Green = 0;
                set(D6on3, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)<= s)&&(Drone6Green == 1)
                Drone6.FaceColor = 'r';
                Drone6Red = 1;
                Drone6Orange = 0;
                Drone6Green = 0;
                set(D3on6, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)< R)&&(Drone3Red == 1)
                    Drone3.FaceColor = o;
                    Drone3Red = 0;
                    Drone3Orange = 1;
                    Drone3Green = 0;
            end 

            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)< R)&&(Drone6Red == 1)
                    Drone6.FaceColor = o;
                    Drone6Red = 0;
                    Drone6Orange = 1;
                    Drone6Green = 0;
            end
            
            set(D6on3,'Position', [PositionXDrone3(k)+0.5 PositionYDrone3(k)-0.5 0]);
            set(D3on6,'Position', [PositionXDrone6(k)+0.5 PositionYDrone6(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)>R)&&(Drone3Orange == 1)
                Drone3.FaceColor = g;
                Drone3Red = 0;
                Drone3Orange = 0;
                set(D6on3, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)>R)&&(Drone6Orange == 1)
                Drone6.FaceColor = g;
                Drone6Red = 0;
                Drone6Orange = 0;
                set(D3on6, 'Visible', 'off' ) 
            end      
                
        end