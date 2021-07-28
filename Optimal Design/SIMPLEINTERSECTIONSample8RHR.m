%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 8: Collision between drone 3 and drone 5
    
        if (ConflictDrone3andDrone5 == 1)% If there's a collision between drone 3 and drone 5
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)<= s)&&(Drone3Green == 1)
                Drone3.FaceColor = 'r';
                Drone3Red = 1;
                Drone3Orange = 0;
                Drone3Green = 0;
                set(D5on3, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)<= s)&&(Drone5Green == 1)
                Drone5.FaceColor = 'r';
                Drone5Red = 1;
                Drone5Orange = 0;
                Drone5Green = 0;
                set(D3on5, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)< R)&&(Drone5Red == 1)
                    Drone5.FaceColor = o;
                    Drone5Red = 0;
                    Drone5Orange = 1;
                    Drone5Green = 0;
            end
            
            set(D5on3,'Position', [PositionXDrone3(k)+0.5 PositionYDrone3(k)-0.5 0]);
            set(D3on5,'Position', [PositionXDrone5(k)+0.5 PositionYDrone5(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)>R)&&(Drone3Orange == 1)
                Drone3.FaceColor = g;
                Drone3Red = 0;
                Drone3Orange = 0;
                set(D5on3, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)>R)&&(Drone5Orange == 1)
                Drone5.FaceColor = g;
                Drone5Red = 0;
                Drone5Orange = 0;
                set(D3on5, 'Visible', 'off' ) 
            end      
                
        end