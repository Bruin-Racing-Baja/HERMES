function regular_acceleration
    load('hermes_system_parameters.mat');
    load('hermes_physical_parameters.mat');
    
    te = 10;

    Slope = timeseries(...
        [0  0   0   0    0]',...        %deg
        [0  2   5   9   10]');
    
    
    ECVT_armed = timeseries(...
    [0  0  1   1]',...
    [0  2  2.05  10]');
    
    
    Throttle = timeseries(...
    [0   0   1   1]',...
    [0   2   2.02  te]');

    RPM_MAX_TORQUE = 3300;
    
    launch_control_enabled = false;

    ECVT_clamp_gain = 0.05;
    ECVT_P_gain = 0.0001;

    Locked_regime_rpm = 3500;
    Slip_regime_rpm = 2400;
    
    Wheel_RPM =         [0     700   1010];
    Target_Engine_rpm = [1800  3300  3300];

    launch_control_enabled = true;


    save('input_signals.mat');
end