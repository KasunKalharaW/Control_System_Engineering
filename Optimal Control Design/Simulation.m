%% Simulation

%% Virtual Environment

% Dimmension of the figure window for the movie

    scrsz = get(0,'ScreenSize');
    fig = figure('Name','Drone Network Representation (2D)','Position',[scrsz(3)/5 scrsz(4)/10 scrsz(3)*4/5 scrsz(4)*8/10]);
           
    % fig;clf
    axis equal
    xlim([-10 10])
    ylim([-10 10])
    lightBlue = [ 0.7 0.9 1];
    set(gca,'Color',lightBlue)
    box on
    grid on
    xlabel('x-axis [km]','FontSize',18)
    ylabel('y-axis [km]','FontSize',18)
    title('Drone Network','FontSize',20)
    
%% Network Topology

% Defining the x-axis according to the chosen scale
    x = -10: 0.01: 10;
    
% Computing the trajectories as edges based on the x-axis (as a function of the x)
    % Edge 1
        y1 = [-x; zeros(1, length(x))];
    % Edge 2    
        y2 = [-x; -x];
    % Edge 3
        y3 = [zeros(1,length(x)); -x];
    % Edge 4
        y4 = [-x; x];
    % Edge 5
        y5 = -y1;
    % Edge 6
        y6 = -y2;
    % Edge 7
        y7 = -y3;
    % Edge 8    
        y8 = -y4;
        
% Display the Intersection zone
    hold on
    R = 3; % Radius of the intersection zone
    THETA = linspace(0,2*pi,1000);
    RHO = ones(1,1000)*R;
    [X,Y] = pol2cart(THETA,RHO);
    X = X+0;
    Y = Y+0;
    h = fill(X,Y,'g');
    
% Display the Critical zone
    hold on
    r = 1; % Radius of the critical zone
    THETA = linspace(0,2*pi,1000);
    RHO = ones(1,1000)*r;
    [X,Y] = pol2cart(THETA,RHO);
    X = X+0;
    Y = Y+0;
    h = fill(X,Y,'y');
    
% Diplaying the Edges
    hold on
    plot(y1(1,:),y1(2,:), 'Color',[0.5 0.5 0.5], 'linestyle','--','LineWidth',  3)
    hold on
    plot(y2(1,:),y2(2,:), 'Color',[0.5 0.5 0.5], 'linestyle','--','LineWidth',  3)
    hold on
    plot(y3(1,:),y3(2,:), 'Color',[0.5 0.5 0.5], 'linestyle','--','LineWidth',  3)
    hold on
    plot(y4(1,:),y4(2,:), 'Color',[0.5 0.5 0.5], 'linestyle','--','LineWidth',  3)
    hold on
    
%% Creating the object 'drone'

    % Defining the coordinates of the shape
        l = 0.4*[-1  , 1/3, 1/3, 1, 1/3, 1/3,-1  ];
        w = 0.7*[-1/3,-1/3,-1/2, 0, 1/2, 1/3, 1/3];
       
    % Creating the drone 1 as specified    
        drone1 = hgtransform;
        Drone1 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone1);
        set( drone1, 'Visible', 'off' )
        set( Drone1, 'Visible', 'off' )
    % Creating the drone 2 as specified    
        drone2 = hgtransform;
        Drone2 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone2); 
          set( drone2, 'Visible', 'off' )
          set( Drone2, 'Visible', 'off' )
    % Creating the drone 3 as specified    
        drone3 = hgtransform;
        Drone3 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone3);
        set( drone3, 'Visible', 'off' )
        set( Drone3, 'Visible', 'off' )
    % Creating the drone 4 as specified    
        drone4 = hgtransform;
        Drone4 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone4);
        set( drone4, 'Visible', 'off' )
        set( Drone4, 'Visible', 'off' )
    % Creating the drone 5 as specified    
        drone5 = hgtransform;
        Drone5 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone5);
        set( drone5, 'Visible', 'off' )
        set( Drone5, 'Visible', 'off' )
    % Creating the drone 6 as specified    
        drone6 = hgtransform;
        Drone6 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone6); 
        set( drone6, 'Visible', 'off' )
        set( Drone6, 'Visible', 'off' )
    % Creating the drone 7 as specified    
        drone7 = hgtransform;
        Drone7 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone7);
        set( drone7, 'Visible', 'off' )
        set( Drone7, 'Visible', 'off' )
    % Creating the drone 8 as specified    
        drone8 = hgtransform;
        Drone8 = patch('XData',l,'YData',w,'FaceColor',[0 0.7 0],'Parent',drone8); 
        set( drone8, 'Visible', 'off' )
        set( Drone8, 'Visible', 'off' )

%% Drone Labels

    % Inidividual IDs
         % Drone 1
         D1 = text(x10,y10,sprintf('1'),'Color','b','fontweight','bold','FontSize',14);
         set( D1, 'Visible', 'off' ) 
         % Drone 2
         D2 = text(x20,y20,sprintf('2'),'Color','b','fontweight','bold','FontSize',14);
         set( D2, 'Visible', 'off' ) 
         % Drone 3
         D3 = text(x30,y30,sprintf('3'),'Color','b','fontweight','bold','FontSize',14);
         set( D3, 'Visible', 'off' ) 
         % Drone 4
         D4 = text(x40,y40,sprintf('4'),'Color','b','fontweight','bold','FontSize',14); 
         set( D4, 'Visible', 'off' )          
         % Drone 5
         D5 = text(x50,y50,sprintf('5'),'Color','b','fontweight','bold','FontSize',14);
         set( D5, 'Visible', 'off' ) 
         % Drone 6
         D6 = text(x60,y60,sprintf('6'),'Color','b','fontweight','bold','FontSize',14);
         set( D6, 'Visible', 'off' ) 
         % Drone 7
         D7 = text(x70,y70,sprintf('7'),'Color','b','fontweight','bold','FontSize',14);
         set( D7, 'Visible', 'off' ) 
         % Drone 1
         D8 = text(x80,y80,sprintf('8'),'Color','b','fontweight','bold','FontSize',14); 
         set( D8, 'Visible', 'off' ) 
      
   % Colliding IDs
      
       % Drone 1
            % On Drone 2
                D1on2 = text(x20/2,y20/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on2, 'Visible', 'off' )   
            % On Drone 3
                D1on3 = text(x30/2,y30/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on3, 'Visible', 'off' )  
            % On Drone 4
                D1on4 = text(x40/2,y40/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on4, 'Visible', 'off' ) 
            % On Drone 5
                D1on5 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on5, 'Visible', 'off' )
            % On Drone 6
                D1on6 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on6, 'Visible', 'off' )
            % On Drone 7
                D1on7 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on7, 'Visible', 'off' )
            % On Drone 8
                D1on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D1on8, 'Visible', 'off' )
                
       % Drone 2
            % On Drone 1
                D2on1 = text(x10/2,y10/2,sprintf('2'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on1, 'Visible', 'off' )        
            % On Drone 3
                D2on3 = text(x30/2,30/2,sprintf('2'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on3, 'Visible', 'off' )               
            % On Drone 4
                D2on4 = text(x40/2,y40/2,sprintf('2'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on4, 'Visible', 'off' )    
            % On Drone 5
                D2on5 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on5, 'Visible', 'off' )
            % On Drone 6
                D2on6 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on6, 'Visible', 'off' )
            % On Drone 7
                D2on7 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on7, 'Visible', 'off' )
            % On Drone 8
                D2on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D2on8, 'Visible', 'off' )
                
       % Drone 3
            % On Drone 1
                D3on1 = text(x10/2,y10/2,sprintf('3'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on1, 'Visible', 'off' )    
            % On Drone 2
                D3on2 = text(x20/2,y20/2,sprintf('3'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on2, 'Visible', 'off' )
            % On Drone 4
                D3on4 = text(x40/2,y40/2,sprintf('3'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on4, 'Visible', 'off' ) 
            % On Drone 5
                D3on5 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on5, 'Visible', 'off' )
            % On Drone 6
                D3on6 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on6, 'Visible', 'off' )
            % On Drone 7
                D3on7 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on7, 'Visible', 'off' )
            % On Drone 8
                D3on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on8, 'Visible', 'off' )
                
       % Drone 4
            % On Drone 1
                D4on1 = text(x10/2,y10/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D4on1, 'Visible', 'off' ) 
            % On Drone 2
                D4on2 = text(x20/2,y20/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D4on2, 'Visible', 'off' ) 
            % On Drone 3
                D4on3 = text(x30/2,y30/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D4on3, 'Visible', 'off' )                
            % On Drone 5
                D3on5 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D3on5, 'Visible', 'off' )
            % On Drone 6
                D4on6 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D4on6, 'Visible', 'off' )
            % On Drone 7
                D4on7 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D4on7, 'Visible', 'off' )
            % On Drone 8
                D4on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D4on8, 'Visible', 'off' )      
                
       % Drone 5
            % On Drone 1
                D5on1 = text(x10/2,y10/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on1, 'Visible', 'off' ) 
            % On Drone 2
                D5on2 = text(x20/2,y20/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on2, 'Visible', 'off' ) 
            % On Drone 3
                D5on3 = text(x30/2,y30/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on3, 'Visible', 'off' )                
            % On Drone 4
                D5on4 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on4, 'Visible', 'off' )
            % On Drone 6
                D5on6 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on6, 'Visible', 'off' )
            % On Drone 7
                D5on7 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on7, 'Visible', 'off' )
            % On Drone 8
                D5on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D5on8, 'Visible', 'off' )     

       % Drone 6
            % On Drone 1
                D6on1 = text(x10/2,y10/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on1, 'Visible', 'off' ) 
            % On Drone 2
                D6on2 = text(x20/2,y20/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on2, 'Visible', 'off' ) 
            % On Drone 3
                D6on3 = text(x30/2,y30/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on3, 'Visible', 'off' )                
            % On Drone 4
                D6on4 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on4, 'Visible', 'off' )
            % On Drone 5
                D6on5 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on5, 'Visible', 'off' )
            % On Drone 7
                D6on7 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on7, 'Visible', 'off' )
            % On Drone 8
                D6on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D6on8, 'Visible', 'off' )  
                
       % Drone 7
            % On Drone 1
                D7on1 = text(x10/2,y10/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on1, 'Visible', 'off' ) 
            % On Drone 2
                D7on2 = text(x20/2,y20/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on2, 'Visible', 'off' ) 
            % On Drone 3
                D7on3 = text(x30/2,y30/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on3, 'Visible', 'off' )                
            % On Drone 4
                D7on4 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on4, 'Visible', 'off' )
            % On Drone 5
                D7on5 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on5, 'Visible', 'off' )
            % On Drone 6
                D7on6 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on6, 'Visible', 'off' )
            % On Drone 8
                D7on8 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D7on8, 'Visible', 'off' )  

        % Drone 8
            % On Drone 1
                D8on1 = text(x10/2,y10/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on1, 'Visible', 'off' ) 
            % On Drone 2
                D8on2 = text(x20/2,y20/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on2, 'Visible', 'off' ) 
            % On Drone 3
                D8on3 = text(x30/2,y30/2,sprintf('4'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on3, 'Visible', 'off' )                
            % On Drone 4
                D8on4 = text(x50/2,y50/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on4, 'Visible', 'off' )
            % On Drone 5
                D8on5 = text(x60/2,y60/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on5, 'Visible', 'off' )
            % On Drone 6
                D8on6 = text(x70/2,y70/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on6, 'Visible', 'off' )
            % On Drone 7
                D8on7 = text(x80/2,y80/2,sprintf('1'),'Color','r','fontweight','bold','FontSize',14);         
                set( D8on7, 'Visible', 'off' )  
                
%% Graphical Environment

% Display the Node
    hold on
    o = 0.3;
    THETA = linspace(0,2*pi,1000);
    RHO = ones(1,1000)*o;
    [X,Y] = pol2cart(THETA,RHO);
    X = X+0;
    Y = Y+0;
    h = fill(X,Y,'r');

d = 2; % Yawing Distance 
s = sqrt(2)*5; % Safe Distance 

%% Trajectory Generation

    % Drone 1:
    trajectory1x = y1(1,:);
    trajectory1y = y1(2,:);
    
    % Drone 2:
    trajectory2x = y2(1,:);
    trajectory2y = y2(2,:);
    
    % Drone 3:
    trajectory3x = y3(1,:);
    trajectory3y = y3(2,:);
    
    % Drone 4:
    trajectory4x = y4(1,:);
    trajectory4y = y4(2,:);
    
    % Drone 5:
    trajectory5x = -y1(1,:);
    trajectory5y = -y1(2,:);
    
    % Drone 6:
    trajectory6x = -y2(1,:);
    trajectory6y = -y2(2,:);
    
    % Drone 7:
    trajectory7x = -y3(1,:);
    trajectory7y = -y3(2,:);
    
    % Drone 8:
    trajectory8x = -y4(1,:);
    trajectory8y = -y4(2,:);


      
      
      
      
      
      
      
      
      
      
      
      
      
      
   