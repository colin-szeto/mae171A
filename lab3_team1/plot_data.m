clear; close all; clc; 
% thermal resistance R


temps = [23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0]; 
delta_t = [47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5];



wattage = [10.5,10.5,10.5,10.5,10.7,10.5,10.5,10.5,10.5,10.7,10.5];


%101 mm 
%101 mm

% area of the plate
area = 0.101 ^2;
delta_t = 47.5; 
bigqdot = sum(wattage)/length(wattage); % heat flux


% heat transfer coefficient (indicates how well the heat is transfered from
% the surface ot the air [alpha]
alpha = bigqdot/((area)*delta_t);

% heating surface load 
qsmalldot = bigqdot/area;

%themal resistance [R]
slope = delta_t(1)./wattage;
R = sum(slope)/length(slope);


% Nusselt Number [Nu]
lamda = 0.026; %W/mk thermal conductivity
L = 0.101; % characteristic length
Nu = alpha*L/lamda;

alpha 
qsmalldot
R
Nu

plot([0,wattage(1)],[0,delta_t(1)])
ylabel('Temperature Differnece [deltaT]')
xlabel('Pel [W]')
grid on




