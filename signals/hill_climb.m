function regular_acceleration
    load('hermes_system_parameters.mat');
    load('hermes_physical_parameters.mat');
    
    te = 20;

    Slope = timeseries(...
        [0  30    30  30  30]',...        %deg
        [0  2.1   5   9   10]');
    
    
    ECVT_armed = timeseries(...
    [0  0  1   1]',...
    [0  2  2.05  10]');
    
    
    Throttle = timeseries(...
    [0   0   1   1]',...
    [0   2   2.02  te]');

    RPM_MAX_TORQUE = 3300;
    
    launch_control_enabled = false;

    ECVT_clamp_gain = 0.0006;
    ECVT_P_gain = 0.0001;

    Locked_regime_rpm = 3000;
    Slip_regime_rpm = 2400;

    save('input_signals.mat');
end