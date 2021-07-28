%% Plots

%% Plot the input and the states.

% % Drone 1
%     figure('NumberTitle', 'off', 'Name', 'Drone 1: Dynamics ');
% 
%     subplot(4,1,1)
%     plot(tout, PositionXDrone1, 'b','LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Position [m]')
%     legend('x_{1}')
%     title('Motion of Drone 1')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,2)
%     plot(tout, PositionYDrone1, 'r', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Position [m]')
%     legend('y_{1}')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,3)
%     plot(tout, VelocityXDrone1, 'b', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarX1, 'g--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Velocity [ms^{-1}]')
%     legend('Vx_{1}', 'Desired X - Velocity')
%     xlim([0 300])
%     grid on
% 
%     subplot(4,1,4)
%     plot(tout, VelocityYDrone1, 'r', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarY1, 'y--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Velocity [ms^{-1}]')
%     legend('Vy_{1}', 'Desired Y - Velocity')
%     xlim([0 300])
%     grid on

% Drone 2
    figure('NumberTitle', 'off', 'Name', 'Drone 2: Dynamics ');

    subplot(4,1,1)
    plot(tout, PositionXDrone2, 'b','LineWidth', 2)
    xlabel('Time')
    ylabel('X - Position [m]')
    legend('x_{2}')
    title('Motion of Drone 2')
    xlim([0 300])
    grid on
    
    subplot(4,1,2)
    plot(tout, PositionYDrone2, 'r', 'LineWidth', 2)
    xlabel('Time')
    ylabel('Y - Position [m]')
    legend('y_{2}')
    xlim([0 300])
    grid on
    
    subplot(4,1,3)
    plot(tout, VelocityXDrone2, 'b', 'LineWidth', 2)
    hold on
    plot(tout, VelocityStarX2, 'g--', 'LineWidth', 2)
    xlabel('Time')
    ylabel('X - Velocity [ms^{-1}]')
    legend('Vx_{2}', 'Desired X - Velocity')
    xlim([0 300])
    grid on
    
    subplot(4,1,4)
    plot(tout, VelocityYDrone2, 'r', 'LineWidth', 2)
    hold on
    plot(tout, VelocityStarY2, 'y--', 'LineWidth', 2)
    xlabel('Time')
    ylabel('Y - Velocity [ms^{-1}]')
    legend('Vy_{2}', 'Desired Y - Velocity')
    xlim([0 300])
    grid on
    
% % Drone 3
%     figure('NumberTitle', 'off', 'Name', 'Drone 3: Dynamics ');
% 
%     subplot(4,1,1)
%     plot(tout, PositionXDrone3, 'b','LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Position [m]')
%     legend('x_{3}')
%     title('Motion of Drone 3')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,2)
%     plot(tout, PositionYDrone3, 'r', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Position [m]')
%     legend('y_{3}')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,3)
%     plot(tout, VelocityXDrone3, 'b', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarX3, 'g--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Velocity [ms^{-1}]')
%     legend('Vx_{3}', 'Desired X - Velocity')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,4)
%     plot(tout, VelocityYDrone3, 'r', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarY3, 'y--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Velocity [ms^{-1}]')
%     legend('Vy_{3}', 'Desired Y - Velocity')
%     xlim([0 300])
%     grid on  
    
% Drone 4
    figure('NumberTitle', 'off', 'Name', 'Drone 4: Dynamics ');

    subplot(4,1,1)
    plot(tout, PositionXDrone4, 'b','LineWidth', 2)
    xlabel('Time')
    ylabel('X - Position [m]')
    legend('x_{4}')
    title('Motion of Drone 4')
    xlim([0 300])
    grid on
    
    subplot(4,1,2)
    plot(tout, PositionYDrone4, 'r', 'LineWidth', 2)
    xlabel('Time')
    ylabel('Y - Position [m]')
    legend('y_{4}')
    xlim([0 300])
    grid on
    
    subplot(4,1,3)
    plot(tout, 0.25*VelocityXDrone4, 'b', 'LineWidth', 2)
    hold on
    plot(tout, 0.25*VelocityStarX4, 'g--', 'LineWidth', 2)
    xlabel('Time')
    ylabel('X - Velocity [ms^{-1}]')
    legend('Vx_{4}', 'Desired X - Velocity')
    xlim([0 300])
    grid on
    
    subplot(4,1,4)
    plot(tout, 0.25*VelocityYDrone4, 'r', 'LineWidth', 2)
    hold on
    plot(tout, 0.25*VelocityStarY4, 'y--', 'LineWidth', 2)
    xlabel('Time')
    ylabel('Y - Velocity [ms^{-1}]')
    legend('Vy_{4}', 'Desired Y - Velocity')
    xlim([0 300])
    grid on  
    
% % Drone 5
%     figure('NumberTitle', 'off', 'Name', 'Drone 5: Dynamics ');
% 
%     subplot(4,1,1)
%     plot(tout, PositionXDrone5, 'b','LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Position [m]')
%     legend('x_{5}')
%     title('Motion of Drone 5')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,2)
%     plot(tout, PositionYDrone5, 'r', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Position [m]')
%     legend('y_{5}')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,3)
%     plot(tout, VelocityXDrone5, 'b', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarX5, 'g--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Velocity [ms^{-1}]')
%     legend('Vx_{5}', 'Desired X - Velocity')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,4)
%     plot(tout, VelocityYDrone5, 'r', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarY5, 'y--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Velocity [ms^{-1}]')
%     legend('Vy_{5}', 'Desired Y - Velocity')
%     xlim([0 300])
%     grid on   
%     
% % Drone 6
%     figure('NumberTitle', 'off', 'Name', 'Drone 6: Dynamics ');
% 
%     subplot(4,1,1)
%     plot(tout, PositionXDrone6, 'b','LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Position [m]')
%     legend('x_{6}')
%     title('Motion of Drone 6')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,2)
%     plot(tout, PositionYDrone6, 'r', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Position [m]')
%     legend('y_{6}')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,3)
%     plot(tout, VelocityXDrone6, 'b', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarX6, 'g--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Velocity [ms^{-1}]')
%     legend('Vx_{6}', 'Desired X - Velocity')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,4)
%     plot(tout, VelocityYDrone6, 'r', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarY6, 'y--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Velocity [ms^{-1}]')
%     legend('Vy_{6}', 'Desired Y - Velocity')
%     xlim([0 300])
%     grid on 
        
% % Drone 7
%     figure('NumberTitle', 'off', 'Name', 'Drone 7: Dynamics ');
% 
%     subplot(4,1,1)
%     plot(tout, PositionXDrone7, 'b','LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Position [m]')
%     legend('x_{7}')
%     title('Motion of Drone 7')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,2)
%     plot(tout, PositionYDrone7, 'r', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Position [m]')
%     legend('y_{7}')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,3)
%     plot(tout, VelocityXDrone7, 'b', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarX7, 'g--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Velocity [ms^{-1}]')
%     legend('Vx_{7}', 'Desired X - Velocity')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,4)
%     plot(tout, VelocityYDrone7, 'r', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarY7, 'y--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Velocity [ms^{-1}]')
%     legend('Vy_{7}', 'Desired Y - Velocity')
%     xlim([0 300])
%     grid on 
%         
% % Drone 8
%     figure('NumberTitle', 'off', 'Name', 'Drone 8: Dynamics ');
% 
%     subplot(4,1,1)
%     plot(tout, PositionXDrone8, 'b','LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Position [m]')
%     legend('x_{8}')
%     title('Motion of Drone 8')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,2)
%     plot(tout, PositionYDrone8, 'r', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Position [m]')
%     legend('y_{8}')
%     xlim([0 300])
%     grid on 
%     
%     subplot(4,1,3)
%     plot(tout, VelocityXDrone8, 'b', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarX8, 'g--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('X - Velocity [ms^{-1}]')
%     legend('Vx_{8}', 'Desired X - Velocity')
%     xlim([0 300])
%     grid on
%     
%     subplot(4,1,4)
%     plot(tout, VelocityYDrone8, 'r', 'LineWidth', 2)
%     hold on
%     plot(tout, VelocityStarY8, 'y--', 'LineWidth', 2)
%     xlabel('Time')
%     ylabel('Y - Velocity [ms^{-1}]')
%     legend('Vy_{8}', 'Desired Y - Velocity')
%     xlim([0 300])
%     grid on     
