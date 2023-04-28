function hermes_system_parameters
    ECVT_MIN_ratio = 0.81;
    ECVT_MAX_ratio = 4.31;
        
    DIFF_ratio = 8.38;
        
    ECVT_P_gain = 0.00007;
    
    REV_LIMIT_GAIN = 0.01;
    
    ECVT_clamp_gain = 0.001;
    
    ECVT_shift_time = 1;
    ECVT_rate_limit = (ECVT_MAX_ratio - ECVT_MIN_ratio) / ECVT_shift_time; %unit ratio per second

    ECVT_max_clamp_force = 200; %lbs
    ECVT_max_clamp_force = ECVT_max_clamp_force * 4.4482189; %N

    ECVT_angle = 13; %deg
    
    Locked_regime_rpm = 3200;
    Slip_regime_rpm = 2400;

    save('hermes_system_parameters.mat');
end
