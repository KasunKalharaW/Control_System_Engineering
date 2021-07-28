% SIMPLE INTERSECTION: Right-Hand-Rule Sample 10: Collision between drone 3 and drone 7
    
        if (ConflictDrone3andDrone7 == 1)% If there's a collision between drone 3 and drone 7
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)<= s)&&(Drone3Green == 1)
                Drone3.FaceColor = 'r';
                Drone3Red = 1;
                Drone3Orange = 0;
                Drone3Green = 0;
                set(D7on3, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)<= s)&&(Drone7Green == 1)
                Drone7.FaceColor = 'r';
                Drone7Red = 1;
                Drone7Orange = 0;
                Drone7Green = 0;
                set(D3on7, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)< R)&&(Drone7Red == 1)
                    Drone7.FaceColor = o;
                    Drone7Red = 0;
                    Drone7Orange = 1;
                    Drone7Green = 0;
            end
            
            set(D7on3,'Position', [PositionXDrone3(k)+0.5 PositionYDrone3(k)-0.5 0]);
            set(D3on7,'Position', [PositionXDrone7(k)+0.5 PositionYDrone7(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)>R)&&(Drone3Orange == 1)
                Drone3.FaceColor = g;
                Drone3Red = 0;
                Drone3Orange = 0;
                set(D7on3, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)>R)&&(Drone7Orange == 1)
                Drone7.FaceColor = g;
                Drone7Red = 0;
                Drone7Orange = 0;
                set(D3on7, 'Visible', 'off' ) 
            end      
                
        end