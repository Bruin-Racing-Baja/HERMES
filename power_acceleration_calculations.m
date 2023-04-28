mass_lb = 600;
power_hp = 10;
velocity_mph = 35;

mass_kg = mass_lb * 0.453592;
power_J_s = power_hp * 745.7 * 0.95 * 0.95 * 0.95 * 0.95 * 0.88
velocity_m_s = velocity_mph * 0.44704;

final_energy = 0.5 * mass_kg * velocity_m_s * velocity_m_s;

time = final_energy / power_J_s