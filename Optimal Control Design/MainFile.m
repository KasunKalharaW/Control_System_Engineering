%% Main File

clear all; close all; clc

%% Motion Modelling
    
    MotionModelling

%% Drone Subsystem Modelling

    DroneSubsystemModelling

%% Simulation

    Simulation

%% Trajectory Generation

    tEdge = 50*sqrt(2);
    tDelayMaximum = 150;
    tStart = 0;
    tFinal = 2*tEdge + tDelayMaximum; % Simulation Time

    sim('NetworkModelNoControlTEST',[tStart tFinal]);

%% Conflict Detection

   ConflictDetectionTEST
    
%% Model Simulation

    tEdge = 50*sqrt(2);
    tDelayMaximum = 600;
    tStart = 0;
    tFinal = 2*tEdge + tDelayMaximum; % Simulation Time

%     sim('NetworkModelNoControl',[tStart tFinal]);
%     sim('NetworkModelSimpleIntersectionCRCA',[tStart tFinal]);
%     sim('NetworkModelIntermediateIntersection',[tStart tFinal]);
%     sim('NetworkModelSimpleIntersectionSimpleDroneModel',[tStart tFinal]);
%     sim('NetworkModelIntermediateIntersectionSimpleDroneModel',[tStart tFinal]);
%     sim('NetworkModelIntermediateIntersectionCRCA',[tStart tFinal]);    
%     sim('AllNetworkModelIntermediateIntersectionCRCA',[tStart tFinal]); 
%     sim('NetworkModelIntermediateIntersectionRDDSample1',[tStart tFinal]);  
%     sim('NetworkModelIntermediateIntersectionCRCASample1',[tStart tFinal]);  
      sim('NetworkModelSimpleIntersectionOptimalControl',[tStart tFinal]);
      
%% Visualisation

    Visualisation  
       
%% Plotting

   Plotting