%% SIMPLE INTERSECTION: Right-Hand-Rule Sample 5: Collision between drone 3 and drone 4
    
        if (ConflictDrone3andDrone4 == 1)% If there's a collision between drone 3 and drone 4
            
        % Before Collision Avoidance
            
            % Change the colour of the confliciting drones to red to
            % indicate that they are in risk.
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)<= s)&&(Drone3Green == 1)
                Drone3.FaceColor = 'r';
                Drone3Red = 1;
                Drone3Orange = 0;
                Drone3Green = 0;
                set(D4on3, 'Visible', 'on' )  
            end 


            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)<= s)&&(Drone4Green == 1)
                Drone4.FaceColor = 'r';
                Drone4Red = 1;
                Drone4Orange = 0;
                Drone4Green = 0;
                set(D3on4, 'Visible', 'on' ) 
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

            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)< R)&&(Drone4Red == 1)
                    Drone4.FaceColor = o;
                    Drone4Red = 0;
                    Drone4Orange = 1;
                    Drone4Green = 0;
            end
            
            set(D4on3,'Position', [PositionXDrone3(k)+0.5 PositionYDrone3(k)-0.5 0]);
            set(D3on4,'Position', [PositionXDrone4(k)+0.5 PositionYDrone4(k)+0.5 0]);
                
         % After Collision Avoidance
            
            % Change the colour of the confliciting drones to green to
            % indicate that they are in colliision-free.           
            
            if (sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)>R)&&(Drone3Orange == 1)
                Drone3.FaceColor = g;
                Drone3Red = 0;
                Drone3Orange = 0;
                set(D4on3, 'Visible', 'off' )  
            end 


            if (sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)>R)&&(Drone4Orange == 1)
                Drone4.FaceColor = g;
                Drone4Red = 0;
                Drone4Orange = 0;
                set(D3on4, 'Visible', 'off' ) 
            end      
                
        end