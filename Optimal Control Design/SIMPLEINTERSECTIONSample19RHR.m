%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 19: Collision between drone 7 and drone 8
    
        if (ConflictDrone7andDrone8 == 1)% If there's a collision between drone 7 and drone 8
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)<= s)&&(Drone7Green == 1)
                Drone7.FaceColor = 'r';
                Drone7Red = 1;
                Drone7Orange = 0;
                Drone7Green = 0;
                set(D8on7, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)<= s)&&(Drone8Green == 1)
                Drone8.FaceColor = 'r';
                Drone8Red = 1;
                Drone8Orange = 0;
                Drone8Green = 0;
                set(D7on8, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)< R)&&(Drone7Red == 1)
                    Drone7.FaceColor = o;
                    Drone7Red = 0;
                    Drone7Orange = 1;
                    Drone7Green = 0;
            end 

            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)< R)&&(Drone8Red == 1)
                    Drone8.FaceColor = o;
                    Drone8Red = 0;
                    Drone8Orange = 1;
                    Drone8Green = 0;
            end
            
            set(D8on7,'Position', [PositionXDrone7(k)+0.5 PositionYDrone7(k)-0.5 0]);
            set(D7on8,'Position', [PositionXDrone8(k)+0.5 PositionYDrone8(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)>R)&&(Drone7Orange == 1)
                Drone7.FaceColor = g;
                Drone7Red = 0;
                Drone7Orange = 0;
                set(D8on7, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)>R)&&(Drone8Orange == 1)
                Drone8.FaceColor = g;
                Drone8Red = 0;
                Drone8Orange = 0;
                set(D7on8, 'Visible', 'off' ) 
            end      
                
        end