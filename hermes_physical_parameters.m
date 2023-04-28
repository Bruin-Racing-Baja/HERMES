function hermes_physical_parameters
    Curve_RPM =         [2400   2600   2800   3000   3200   3400   3600];
    Curve_Torque_ftlb = [18.5   18.1   17.4   16.6   15.4   14.5   13.5];
    
    
    RPM_MAX = 3600;
    RPM_MAX_TORQUE = 2400; 
    RPM_STALL = 2200;
    
    Curve_Torque = Curve_Torque_ftlb * 1.356;
        
    Car_Mass_lb = 400 + 200; %lbs, including driver
    Car_mass = Car_Mass_lb * 0.45359;
    
    GRAVITY = 9.81;
    
    Wheel_radius_in = 23/2; %1 inch wheel compression
    Wheel_radius = Wheel_radius_in * 0.0254;
    
    ECVT_efficiency = 0.88;
    Transmission_efficiency = 0.95 * 0.95 * 0.95 * 0.95; %2 spur gears + 2 bevel gears
    Engine_efficiency = 1;
    
    Car_moment_of_inertia = 4 * (0.06631756 + 0.06646249);  %estimated using wheel cad
    
    ECVT_friction_coeff = 0.51;
    
    Engine_moment_of_inertia = 0.00172765 + 0.03589500;     %estimated using correct crankshaft CAD and guestimate flywheel CAD
    
    Drag_coeff = 0.906;
    Air_density = 0.44;
    Cross_sectional_area = 0.78;

    Rolling_coeff = 0.125;     %dirt

    save('hermes_physical_parameters.mat');
end