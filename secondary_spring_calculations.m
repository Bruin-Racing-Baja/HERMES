%maximum clamp force bount
Safety_factor = 1;

Angle_deg = 13;
Angle_rad = deg2rad (Angle_deg);
mu = 0.51;

Dse = 4.149:0.1:9.34; %diameter inches
Rse_upper = Dse ./ 2; %radius inch

Torque_transmitted = 18.5 * 12 * 4.31; %in-lbs

Fse_upper = Safety_factor * Torque_transmitted * cos(Angle_rad) ./ (2 * mu * Rse_upper);
Rse_upper = Rse_upper .^ -1;
Rse_upper_norm = (Rse_upper - min(Rse_upper))./ (max(Rse_upper) - min(Rse_upper)); 

%minimum clamp force bount
Ratios = 0.81:0.1:4.31;
Rse_lower = linspace(4.149,9.34, length(Ratios));
Rse_lower = Rse_lower ./ 2;

Torque_transmitted = 18.5 * 12 .* Ratios;
Fse_lower = Safety_factor * Torque_transmitted * cos(Angle_rad) ./ (2 * mu * Rse_lower);

Rse_lower = Rse_lower .^ -1;
Rse_lower_norm = (Rse_lower - min(Rse_lower)) ./ (max(Rse_lower) - min(Rse_lower));

hold on;
plot(Rse_upper_norm, Fse_upper, 'DisplayName','upper limit');
plot(Rse_lower_norm, Fse_lower, 'DisplayName','lower limit');

xlabel('1/ shifting ratio, normalized')
ylabel('Clamp Force (lbf)')
hold off;

lgd = legend;

Belt_width = 1.188; %inch