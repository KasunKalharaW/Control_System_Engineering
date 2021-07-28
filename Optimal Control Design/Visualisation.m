%% Visualisation

%% Animation starts

    disp('Animation started');

% Allocation space movie
    movielength = 150;
    mov(1:length(movielength)) = struct('cdata',[],'colormap',[]);


%% Make the Drones Visible
 
%     % Drone 1
%         set( drone1, 'Visible', 'on' )
%         set( Drone1, 'Visible', 'on' )
    % Drone 2
        set( drone2, 'Visible', 'on' )
        set( Drone2, 'Visible', 'on' )
%     % Drone 3
%         set( drone3, 'Visible', 'on' )
%         set( Drone3, 'Visible', 'on' )               
    % Drone 4
        set( drone4, 'Visible', 'on' )
        set( Drone4, 'Visible', 'on' )   
%     % Drone 5
%         set( drone5, 'Visible', 'on' )
%         set( Drone5, 'Visible', 'on' )
%     % Drone 6
%         set( drone6, 'Visible', 'on' )
%         set( Drone6, 'Visible', 'on' )
%     % Drone 7
%         set( drone7, 'Visible', 'on' )
%         set( Drone7, 'Visible', 'on' )               
%     % Drone 8
%         set( drone8, 'Visible', 'on' )
%         set( Drone8, 'Visible', 'on' )     
%         
%% Make the  Drone labels visible

%     % Drone 1
%         set( D1, 'Visible', 'on' )
    % Drone 2
        set( D2, 'Visible', 'on' )
%     % Drone 3
%         set( D3, 'Visible', 'on' )
    % Drone 4
        set( D4, 'Visible', 'on' )
%     % Drone 5
%         set( D5, 'Visible', 'on' )
%     % Drone 6
%         set( D6, 'Visible', 'on' )
%     % Drone 7
%         set( D7, 'Visible', 'on' )
%     % Drone 8
%         set( D8, 'Visible', 'on' )

%%   Drone Colour Initialisation

    Drone1Red = 0; % This becomes 1 when the Drone 1 is red
    Drone2Red = 0; % This becomes 1 when the Drone 2 is red
    Drone3Red = 0; % This becomes 1 when the Drone 3 is red
    Drone4Red = 0; % This becomes 1 when the Drone 4 is red
    Drone5Red = 0; % This becomes 1 when the Drone 1 is red
    Drone6Red = 0; % This becomes 1 when the Drone 2 is red
    Drone7Red = 0; % This becomes 1 when the Drone 3 is red
    Drone8Red = 0; % This becomes 1 when the Drone 4 is red
    
    Drone1Green = 1; % This becomes 1 when the Drone 1 is green (Initially green)
    Drone2Green = 1; % This becomes 1 when the Drone 2 is green (Initially green)
    Drone3Green = 1; % This becomes 1 when the Drone 3 is green (Initially green)
    Drone4Green = 1; % This becomes 1 when the Drone 4 is green (Initially green)
    Drone5Green = 1; % This becomes 1 when the Drone 1 is green (Initially green)
    Drone6Green = 1; % This becomes 1 when the Drone 2 is green (Initially green)
    Drone7Green = 1; % This becomes 1 when the Drone 3 is green (Initially green)
    Drone8Green = 1; % This becomes 1 when the Drone 4 is green (Initially green)
    
    Drone1Orange = 0; % This becomes 1 when the Drone 1 is Orange
    Drone2Orange = 0; % This becomes 1 when the Drone 2 is Orange
    Drone3Orange = 0; % This becomes 1 when the Drone 3 is Orange
    Drone4Orange = 0; % This becomes 1 when the Drone 4 is Orange
    Drone5Orange = 0; % This becomes 1 when the Drone 1 is Orange
    Drone6Orange = 0; % This becomes 1 when the Drone 2 is Orange
    Drone7Orange = 0; % This becomes 1 when the Drone 3 is Orange
    Drone8Orange = 0; % This becomes 1 when the Drone 4 is Orange
    
    o = [ 0.9100 0.4200 0.1700]; % Orange Colour
    g = [0 0.7 0];  % Green Colour
    
%% Motion of Drones

% Start the timer
    tic
    
for k = 1:movielength

% Time
    Step = text(-16,11,sprintf('Step: %d',ceil(tout(k))),'FontSize',18);
      
% Timer
    Time = text(14,11,sprintf('Time: %d s',ceil(toc)),'FontSize',18);
    
% %     while sqrt(PositionXDrone1(t)^2 + PositionYDrone1(t)^2)> R   
%       % Motion of Drone 1 along edge 1    
%         drone1.Matrix = makehgtform('translate',[PositionXDrone1(k) PositionYDrone1(k) 0], 'zrotate',-pi);
%         plot(PositionXDrone1(1:k-1),PositionYDrone1(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
%         set(D1,'Position', [PositionXDrone1(k)-1 PositionYDrone1(k) 0]);
%         text(11,8.5,sprintf('Position_{1} :'),'Color','b','fontweight','bold','FontSize',10)
%         P1 = text(13,8.6,sprintf('[ %0.2f %0.2f ] m',PositionXDrone1(k),PositionYDrone1(k)),'Color','b','FontSize',10);
%         text(11,7.5,sprintf('Velocity_{1} :'),'Color','b','fontweight','bold','FontSize',10)
%         V1 = text(13,7.6,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone1(k),VelocityYDrone1(k)),'Color','b','FontSize',10);
    
%    while sqrt(PositionXDrone2(k)^2 + PositionYDrone2(k)^2)> R   
      % Motion of Drone 2 along edge 2   
        drone2.Matrix = makehgtform('translate',[PositionXDrone2(k) PositionXDrone2(k) 0],'zrotate',-3*pi/4);
        plot(PositionXDrone2(1:k-1),PositionYDrone2(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
        set(D2,'Position', [PositionXDrone2(k)-0.5 PositionYDrone2(k)-0.5 0]);
        text(11,6.5,sprintf('Position_{2} :'),'Color','r','fontweight','bold','FontSize',10)
        P2 = text(13,6.6,sprintf('[ %0.2f %0.2f ] m',PositionXDrone2(k),PositionYDrone2(k)),'Color','r','FontSize',10);
        text(11,5.5,sprintf('Velocity_{2} :'),'Color','r','fontweight','bold','FontSize',10)
        V2 = text(13,5.6,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone2(k),VelocityYDrone2(k)),'Color','r','FontSize',10);

% %     while sqrt(PositionXDrone3(k)^2 + PositionYDrone3(k)^2)> R   
%       % Motion of Drone 3 along edge 3    
%         drone3.Matrix = makehgtform('translate',[PositionXDrone3(k) PositionYDrone3(k) 0],'zrotate',-2*pi/4);
%         plot(PositionXDrone3(1:k-1),PositionYDrone3(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
%         set(D3,'Position', [PositionXDrone3(k) PositionYDrone3(k)-0.5 0]);
%         text(11,4.5,sprintf('Position_{3} :'),'Color','g','fontweight','bold','FontSize',10)
%         P3 = text(13,4.6,sprintf('[ %0.2f %0.2f ] m',PositionXDrone3(k),PositionYDrone3(k)),'Color','g','FontSize',10);
%         text(11,3.5,sprintf('Velocity_{3} :'),'Color','g','fontweight','bold','FontSize',10)
%         V3 =text(13,3.6,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone3(k),VelocityYDrone3(k)),'Color','g','FontSize',10);

%   while sqrt(PositionXDrone4(k)^2 + PositionYDrone4(k)^2)> R   
      % Motion of Drone 4 along edge 4
        drone4.Matrix = makehgtform('translate',[PositionXDrone4(k) PositionYDrone4(k) 0], 'zrotate',-pi/4);
        plot(PositionXDrone4(1:k-1),PositionYDrone4(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
        set(D4,'Position', [PositionXDrone4(k)+0.5 PositionYDrone4(k)-0.5 0]);
        y = [1 0.8 0];
        text(11,2.5,sprintf('Position_{4} :'),'Color',y,'fontweight','bold','FontSize',10)
        P4 = text(13,2.6,sprintf('[ %0.2f %0.2f ] m',PositionXDrone4(k),PositionYDrone4(k)),'Color',y,'FontSize',10);
        text(11,1.5,sprintf('Velocity_{4} :'),'Color',y,'fontweight','bold','FontSize',10)
        V4 = text(13,1.6,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone4(k),VelocityYDrone4(k)),'Color',y,'FontSize',10);

% %     while sqrt(PositionXDrone5(k)^2 + PositionYDrone5(k)^2)> R   
%       % Motion of Drone 5 along edge 5    
%         drone5.Matrix = makehgtform('translate',[PositionXDrone5(k) PositionYDrone5(k) 0],'zrotate',2*pi);
%         plot(PositionXDrone5(1:k-1),PositionYDrone5(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
%         set(D5,'Position', [PositionXDrone5(k)+0.5 PositionYDrone5(k) 0]);
%         text(11,-1.5,sprintf('Position_{5} :'),'Color','c','fontweight','bold','FontSize',10)
%         P5 = text(13,-1.4,sprintf('[ %0.2f %0.2f ] m',PositionXDrone5(k),PositionYDrone5(k)),'Color','c','FontSize',10);
%         text(11,-2.5,sprintf('Velocity_{5} :'),'Color','c','fontweight','bold','FontSize',10)
%         V5 = text(13,-2.4,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone5(k),VelocityYDrone5(k)),'Color','c','FontSize',10);
  
% %     while sqrt(PositionXDrone6(k)^2 + PositionYDrone6(k)^2)> R  
%       % Motion of Drone 6 along edge 6    
%         drone6.Matrix = makehgtform('translate',[PositionXDrone6(k) PositionYDrone6(k) 0],'zrotate',pi/4);
%         plot(PositionXDrone6(1:k-1),PositionYDrone6(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
%         set(D6,'Position', [PositionXDrone6(k)+0.5 PositionYDrone6(k)+0.5 0]);
%         text(11,-3.5,sprintf('Position_{6} :'),'Color','m','fontweight','bold','FontSize',10)
%         P6 = text(13,-3.4,sprintf('[ %0.2f %0.2f ] m',PositionXDrone6(k),PositionYDrone6(k)),'Color','m','FontSize',10);
%         text(11,-4.5,sprintf('Velocity_{6} :'),'Color','m','fontweight','bold','FontSize',10)
%         V6 = text(13,-4.4,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone6(k),VelocityYDrone6(k)),'Color','m','FontSize',10);

% %     while sqrt(PositionXDrone7(k)^2 + PositionYDrone7(k)^2)> R  
%       % Motion of Drone 7 along edge 7    
%         drone7.Matrix = makehgtform('translate',[PositionXDrone7(k) PositionYDrone7(k) 0],'zrotate',2*pi/4);
%         plot(PositionXDrone7(1:k-1),PositionYDrone7(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
%         set(D7,'Position', [PositionXDrone7(k) PositionYDrone7(k)+0.5 0]);
%         text(11,-5.5,sprintf('Position_{7} :'),'Color','k','fontweight','bold','FontSize',10)
%         P7 = text(13,-5.4,sprintf('[ %0.2f %0.2f ] m',PositionXDrone7(k),PositionYDrone7(k)),'Color','k','FontSize',10);
%         text(11,-6.5,sprintf('Velocity_{7} :'),'Color','k','fontweight','bold','FontSize',10)
%         V7 = text(13,-6.4,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone7(k),VelocityYDrone7(k)),'Color','k','FontSize',10);

% %     while sqrt(PositionXDrone8(k)^2 + PositionYDrone8(k)^2)> R 
%       % Motion of Drone 8 along edge 8    
%         drone8.Matrix = makehgtform('translate',[PositionXDrone8(k) PositionYDrone8(k) 0],'zrotate', 3*pi/4);
%         plot(PositionXDrone8(1:k-1),PositionYDrone8(1:k-1), 'Color','k', 'linestyle','-','LineWidth',  3)
%         set(D8,'Position', [PositionXDrone8(k)-0.5 PositionYDrone8(k)+0.5 0]);
%         o = [1 0.5 0];
%         text(11,-7.5,sprintf('Position_{8} :'),'Color',o,'fontweight','bold','FontSize',10)
%         P8 = text(13,-7.4,sprintf('[ %0.2f %0.2f ] m',PositionXDrone8(k),PositionYDrone8(k)),'Color',o,'FontSize',10);
%         text(11,-8.5,sprintf('Velocity_{8} :'),'Color',o,'fontweight','bold','FontSize',10)
%         V8 = text(13,-8.4,sprintf('[ %0.2f  %0.2f ] ms^{-1}',VelocityXDrone8(k),VelocityYDrone8(k)),'Color',o,'FontSize',10);        

% Change the face colour of the drones upon conflict detection

    % SIMPLE INTERSECTION:
        % Right-Hand-Rule
            %  Sample 1: Collision between drone 2 and drone 4
               SIMPLEINTERSECTIONSample1RHR
            %  Sample 2: Collision between drone 1 and drone 3
%                 SIMPLEINTERSECTIONSample2RHR
            %  Sample 3: Collision between drone 1 and drone 4
%                 SIMPLEINTERSECTIONSample3RHR        
            %  Sample 4: Collision between drone 1 and drone 2
%                 SIMPLEINTERSECTIONSample4RHR
            %  Sample 5: Collision between drone 3 and drone 4
%                SIMPLEINTERSECTIONSample5RHR
            %  Sample 6: Collision between drone 2 and drone 3
%                 SIMPLEINTERSECTIONSample6RHR            
            %  Sample 7: Collision between drone 1 and drone 5
%                 SIMPLEINTERSECTIONSample7RHR
            %  Sample 8: Collision between drone 3 and drone 5
%                 SIMPLEINTERSECTIONSample8RHR        
            %  Sample 9: Collision between drone 1 and drone 7
%                 SIMPLEINTERSECTIONSample9RHR
            %  Sample 10: Collision between drone 3 and drone 7
%                SIMPLEINTERSECTIONSample10RHR
            %  Sample 11: Collision between drone 5 and drone 7
%                SIMPLEINTERSECTIONSample11RHR         
            %  Sample 12: Collision between drone 1 and drone 6
%                SIMPLEINTERSECTIONSample12RHR
            %  Sample 13: Collision between drone 3 and drone 6
%                 SIMPLEINTERSECTIONSample13RHR
            %  Sample 14: Collision between drone 4 and drone 6
%                 SIMPLEINTERSECTIONSample14RHR        
            %  Sample 15: Collision between drone 2 and drone 5
%                 SIMPLEINTERSECTIONSample15RHR
            %  Sample 16: Collision between drone 2 and drone 7
%                SIMPLEINTERSECTIONSample16RHR
            %  Sample 17: Collision between drone 2 and drone 8
%                 SIMPLEINTERSECTIONSample17RHR            
            %  Sample 18: Collision between drone 5 and drone 8
%                 SIMPLEINTERSECTIONSample18RHR
            %  Sample 19: Collision between drone 7 and drone 8
%                 SIMPLEINTERSECTIONSample19RHR        
      
          
        
        drawnow;
        pause(0.11)  
        
% Record data
    mov(k) = getframe(gcf);
         
% Update the Position and Velocity Texts    
%     delete([P1 V1]);
    delete([P2 V2]);
%     delete([P3 V3]);
    delete([P4 V4]);
%     delete([P5 V5]);
%     delete([P6 V6]);
%     delete([P7 V7]);
%     delete([P8 V8]);

% Update the Step  
    delete(Step);
    
% Update the Time   
    delete(Time);    
    
end

% Total Steps and Time
    text(-16,11,sprintf('Total Steps: %d ',ceil(tout(k))),'Color',[0.5 0.5 0.5],'fontweight','bold','FontSize',10,'FontSize',18);
    text(14,11,sprintf('Total Time: %d s',ceil(toc)),'Color',[0.5 0.5 0.5],'fontweight','bold','FontSize',10,'FontSize',18);
    
%     if tout >100
%         
%     
%     mov(k+1) = getframe(gcf);
%     mov(k+2) = getframe(gcf);
%     mov(k+3) = getframe(gcf);
%     mov(k+4) = getframe(gcf);
%     mov(k+5) = getframe(gcf);
%     mov(k+6) = getframe(gcf);
%     mov(k+7) = getframe(gcf);  

    hold off 

    disp('Animation finished');

%% Save the animation

    vidObj = VideoWriter('NetworkModel.avi');             % Create a video object
    
    vidObj.FrameRate = 3.5;                                 % Set frames per second in video object
    
    open(vidObj);                                         % Open video object
    
    writeVideo(vidObj,mov);                               % Write the frames mov in video object
    
    close(vidObj)                                         % Close video object
    
    disp('Animation Saved in NetworkModel.avi')

    
