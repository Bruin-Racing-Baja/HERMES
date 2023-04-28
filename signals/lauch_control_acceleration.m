function lauch_control_acceleration
    load('hermes_system_parameters.mat');
    load('hermes_physical_parameters.mat');
    
    te = 15;

    Slope = timeseries(...
        [0  0   0   0    0]',...        %deg
        [0  2   5   9   10]');
    
    
    ECVT_armed = timeseries(...
    [0  0  1   1]',...
    [0  2  2.1  10]');
    
    
    Throttle = timeseries(...
    [1   1   1]',...
    [0   1   10]');

    RPM_MAX_TORQUE = 3300;

    launch_control_enabled = true;

    Locked_regime_rpm = 3100;
    Slip_regime_rpm = 2800;

    ECVT_clamp_gain = 0.0006;
    


    save('input_signals.mat');
end