%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 16: Collision between drone 2 and drone 7
    
        if (ConflictDrone2andDrone7 == 1)% If there's a collision between drone 2 and drone 7
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Green == 1)
                Drone2.FaceColor = 'r';
                Drone2Red = 1;
                Drone2Orange = 0;
                Drone2Green = 0;
                set(D7on2, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)<= s)&&(Drone7Green == 1)
                Drone7.FaceColor = 'r';
                Drone7Red = 1;
                Drone7Orange = 0;
                Drone7Green = 0;
                set(D2on7, 'Visible', 'on' ) 
            end            

        % During Collision Avoidance
            
            % Change the colour of the confliciting drones to orange to
            % indicate that they are in colliision avoidance.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)< R)&&(Drone2Red == 1)
                    Drone2.FaceColor = o;
                    Drone2Red = 0;
                    Drone2Orange = 1;
                    Drone2Green = 0;
            end 

            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)< R)&&(Drone7Red == 1)
                    Drone7.FaceColor = o;
                    Drone7Red = 0;
                    Drone7Orange = 1;
                    Drone7Green = 0;
            end
            
            set(D7on2,'Position', [PositionXDrone2(k)+0.5 PositionYDrone2(k)-0.5 0]);
            set(D2on7,'Position', [PositionXDrone7(k)+0.5 PositionYDrone7(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)>R)&&(Drone2Orange == 1)
                Drone2.FaceColor = g;
                Drone2Red = 0;
                Drone2Orange = 0;
                set(D7on2, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)>R)&&(Drone7Orange == 1)
                Drone7.FaceColor = g;
                Drone7Red = 0;
                Drone7Orange = 0;
                set(D2on7, 'Visible', 'off' ) 
            end      
                
        end