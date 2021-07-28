%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 4: Collision between drone 1 and drone 2
    
        if (ConflictDrone1andDrone2 == 1)% If there's a collision between drone 1 and drone 2
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)<= s)&&(Drone1Green == 1)
                Drone1.FaceColor = 'r';
                Drone1Red = 1;
                Drone1Orange = 0;
                Drone1Green = 0;
                set(D2on1, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Green == 1)
                Drone2.FaceColor = 'r';
                Drone2Red = 1;
                Drone2Orange = 0;
                Drone2Green = 0;
                set(D1on2, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)< R)&&(Drone2Red == 1)
                    Drone2.FaceColor = o;
                    Drone2Red = 0;
                    Drone2Orange = 1;
                    Drone2Green = 0;
            end
            
            set(D2on1,'Position', [PositionXDrone1(k)+0.5 PositionYDrone1(k)-0.5 0]);
            set(D1on2,'Position', [PositionXDrone2(k)+0.5 PositionYDrone2(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone1(k)^2 + PositionYDrone1(k)^2)>R)&&(Drone1Orange == 1)
                Drone1.FaceColor = g;
                Drone1Red = 0;
                Drone1Orange = 0;
                set(D2on1, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)>R)&&(Drone2Orange == 1)
                Drone2.FaceColor = g;
                Drone2Red = 0;
                Drone2Orange = 0;
                set(D1on2, 'Visible', 'off' ) 
            end      
                
        end