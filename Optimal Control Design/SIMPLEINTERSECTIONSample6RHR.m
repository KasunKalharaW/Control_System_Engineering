%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 6: Collision between drone 2 and drone 3
    
        if (ConflictDrone2andDrone3 == 1)% If there's a collision between drone 2 and drone 3
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)<= s)&&(Drone2Green == 1)
                Drone2.FaceColor = 'r';
                Drone2Red = 1;
                Drone2Orange = 0;
                Drone2Green = 0;
                set(D3on2, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)<= s)&&(Drone3Green == 1)
                Drone3.FaceColor = 'r';
                Drone3Red = 1;
                Drone3Orange = 0;
                Drone3Green = 0;
                set(D2on3, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)< R)&&(Drone3Red == 1)
                    Drone3.FaceColor = o;
                    Drone3Red = 0;
                    Drone3Orange = 1;
                    Drone3Green = 0;
            end
            
            set(D3on2,'Position', [PositionXDrone2(k)+0.5 PositionYDrone2(k)-0.5 0]);
            set(D2on3,'Position', [PositionXDrone3(k)+0.5 PositionYDrone3(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)>R)&&(Drone2Orange == 1)
                Drone2.FaceColor = g;
                Drone2Red = 0;
                Drone2Orange = 0;
                set(D3on2, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)>R)&&(Drone3Orange == 1)
                Drone3.FaceColor = g;
                Drone3Red = 0;
                Drone3Orange = 0;
                set(D2on3, 'Visible', 'off' ) 
            end      
                
        end