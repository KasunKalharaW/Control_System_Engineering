%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 18: Collision between drone 5 and drone 8
    
        if (ConflictDrone5andDrone8 == 1)% If there's a collision between drone 5 and drone 8
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)<= s)&&(Drone5Green == 1)
                Drone5.FaceColor = 'r';
                Drone5Red = 1;
                Drone5Orange = 0;
                Drone5Green = 0;
                set(D8on5, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)<= s)&&(Drone8Green == 1)
                Drone8.FaceColor = 'r';
                Drone8Red = 1;
                Drone8Orange = 0;
                Drone8Green = 0;
                set(D5on8, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)< R)&&(Drone8Red == 1)
                    Drone8.FaceColor = o;
                    Drone8Red = 0;
                    Drone8Orange = 1;
                    Drone8Green = 0;
            end
            
            set(D8on5,'Position', [PositionXDrone5(k)+0.5 PositionYDrone5(k)-0.5 0]);
            set(D5on8,'Position', [PositionXDrone8(k)+0.5 PositionYDrone8(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)>R)&&(Drone5Orange == 1)
                Drone5.FaceColor = g;
                Drone5Red = 0;
                Drone5Orange = 0;
                set(D8on5, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)>R)&&(Drone8Orange == 1)
                Drone8.FaceColor = g;
                Drone8Red = 0;
                Drone8Orange = 0;
                set(D5on8, 'Visible', 'off' ) 
            end      
                
        end