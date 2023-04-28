% fid = fopen('cooling.txt');
% A_size = [21 inf];
% A = fscanf(fid, '%f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f \n ', A_size);
% A = A';

Therm_1 = A(:, 19);
Therm_1 = movmean(Therm_1, 50);
Therm_1 = convtemp(Therm_1, 'C', 'F');


Therm_2 = A(:, 20);
Therm_2 = movmean(Therm_2, 50);
Therm_2 = convtemp(Therm_2, 'C', 'F');

Therm_3 = A(:, 21);
Therm_3 = movmean(Therm_3, 50);
Therm_3 = convtemp(Therm_3, 'C', 'F');


size = 127063;

x_axis = linspace(0, 1, size);
x_axis = x_axis';

hold on;
plot(x_axis, Therm_1, 'DisplayName','Thermistor 1');
plot(x_axis, Therm_2, 'DisplayName','Thermistor 2');
plot(x_axis, Therm_3, 'DisplayName','Thermistor 3');


xlabel('time (normalized)')
ylabel('Temperature (F)')
hold off;

lgd = legend;
