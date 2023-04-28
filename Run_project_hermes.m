clear 
clc

hermes_system_parameters;
hermes_physical_parameters;

%use profile
lauch_control_acceleration;
%regular_acceleration;
%hill_climb;

load('input_signals.mat');

fprintf('Starting Simulation...\n');

sim("Hermes.slx", te);

fprintf('Simulation finished\n');
fprintf('Opening Data viewer\n');

Simulink.sdi.view;