clear; close all; clc;

% Load data from the CSV files
filename1 = 'ca_fl_1.csv'; % Replace with your actual file name
data1 = readtable(filename1);

filename2 = 'ca_fl_2.csv'; % Replace with your actual file name
data2 = readtable(filename2);

filename3 = 'ca_fl_3.csv'; % Replace with your actual file name
data3 = readtable(filename3);

filename4 = 'ca_fl_4.csv'; % Replace with your actual file name
data4 = readtable(filename4);

filename5 = 'ea_fl.csv'; % Replace with your actual file name
data5 = readtable(filename5);

% Define constants for stress-strain calculations
area = 19 * 3.2; % Cross-sectional area in mm^2

gauge_length = 165; % Gauge length in mm

% Extract columns and calculate stress-strain for each dataset
displacement1 = data1.Displacement; % Displacement (mm)
force1 = data1.Force; % Force (N)
stress1 = force1 / area; % Stress in MPa
strain1 = displacement1 / gauge_length; % Strain (unitless)

displacement2 = data2.Displacement;
force2 = data2.Force;
stress2 = force2 / area;
strain2 = displacement2 / gauge_length;

displacement3 = data3.Displacement;
force3 = data3.Force;
stress3 = force3 / area;
strain3 = displacement3 / gauge_length;

displacement4 = data4.Displacement;
force4 = data4.Force;
stress4 = force4 / area;
strain4 = displacement4 / gauge_length;

displacement5 = data5.Displacement;
force5 = data5.Force;
stress5 = force5 / area;
strain5 = displacement5 / gauge_length;

% Plot stress-strain curves
figure;
hold on; % Enable multiple plots on the same figure
plot(strain1, stress1, '-', 'LineWidth', 1.5, 'DisplayName', 'Dataset 1');
plot(strain2, stress2, '-', 'LineWidth', 1.5, 'DisplayName', 'Dataset 2');
plot(strain3, stress3, '-', 'LineWidth', 1.5, 'DisplayName', 'Dataset 3');
plot(strain4, stress4, '-', 'LineWidth', 1.5, 'DisplayName', 'Dataset 4');
plot(strain5, stress5, '-', 'LineWidth', 1.5, 'DisplayName', 'Dataset 5');

% Customize plot appearance
xlabel('Strain');
ylabel('Stress (MPa)');
title('Stress-Strain Curves for Multiple Datasets');
legend('cast acrylic 1','cast acrylic 2','cast acrylic 3','cast acrylic 4','extruded acrylic', 'Location', 'best'); % Show legend with dataset labels
grid on;
%xlim([0 0.15]); % Adjust x-axis limits if needed

% Save the plot as an image (optional)
% saveas(gcf, 'stress_strain_comparison_plot.png');
