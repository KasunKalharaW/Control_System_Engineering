%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 17: Collision between drone 2 and drone 8
    
        if (ConflictDrone2andDrone8 == 1)% If there's a collision between drone 2 and drone 8
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Green == 1)
                Drone2.FaceColor = 'r';
                Drone2Red = 1;
                Drone2Orange = 0;
                Drone2Green = 0;
                set(D8on2, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)<= s)&&(Drone8Green == 1)
                Drone8.FaceColor = 'r';
                Drone8Red = 1;
                Drone8Orange = 0;
                Drone8Green = 0;
                set(D2on8, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)< R)&&(Drone8Red == 1)
                    Drone8.FaceColor = o;
                    Drone8Red = 0;
                    Drone8Orange = 1;
                    Drone8Green = 0;
            end
            
            set(D8on2,'Position', [PositionXDrone2(k)+0.5 PositionYDrone2(k)-0.5 0]);
            set(D2on8,'Position', [PositionXDrone8(k)+0.5 PositionYDrone8(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)>R)&&(Drone2Orange == 1)
                Drone2.FaceColor = g;
                Drone2Red = 0;
                Drone2Orange = 0;
                set(D8on2, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)>R)&&(Drone8Orange == 1)
                Drone8.FaceColor = g;
                Drone8Red = 0;
                Drone8Orange = 0;
                set(D2on8, 'Visible', 'off' ) 
            end      
                
        end