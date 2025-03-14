clear; close all; clc; 
% thermal resistance R
% Section 5.1  Free convection  [No fan, power on]


temps = [23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0,23.0]; 
%delta_t = [47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5,47.5];

wattage = [10.5,10.5,10.5,10.5,10.7,10.5,10.5,10.5,10.5,10.7,10.5];
wattage = [-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.03,-0.02,-0.02];

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

% Test 2 5.3  Forced laminar convection [ Fan on, vary power] 
wattage_0_test_2 = [1.23,1.28,1.24,1.26,1.23,1.25,1.27,1.27,1.27,1.28,2.70,2.74,2.74,2.79,2.78,2.77,2.80,2.76,2.81,2.79];
deltaT_0_test_2 = [11.2,11.1,11.1,11.2,11.2,11.1,11.2,11.2,11.1,11.2,10.8,10.8,10.9,10.8,10.8,10.8,10.8,10.8,10.8,10.9];

wattage_5_test_2 = [1.24,1.23,1.23,1.22,1.23,1.24,1.25,1.23,1.24,1.23,1.23];
deltaT_5_test_2 = [34.9,34.9,34.9,34.9,34.9,34.9,34.9,34.9,34.9,34.8,34.9];

% 5.6 Force turbulent convection [Fan on, vary power]
wattage_test_3 = [1.25,1.24,1.24,1.25,1.23,1.28,1.25,1.23,1.23,1.26,1.26];
delta_test_3 = [33.7,33.7,33.7,33.6,33.7,33.7,33.7,33.7,33.7,33.7,33.6];

% 5.5 Forced convection [Power on, vary air flow]
wattage_test_4_25 = [1.25,1.27,1.25,1.26,1.27,1.26,1.28,1.27,1.26,1.29];
delta_test_4_25 = [18.2,18.2,18.2,18.2,18.2,18.2,18.2,18.2,18.2,18.2];

wattage_test_4_50 = [2.70,2.74,2.74,2.79,2.78,2.77,2.80,2.76,2.81,2.79];
delta_test_4_50 = [10.8,10.8,10.9,10.8,10.8,10.8,10.8,10.8,10.8,10.9];


figure(1)
%plot([0,wattage(1)],[0,delta_t(1)],LineWidth=2)
hold on 
%scatter(wattage,delta_t)
ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')
grid on
%hold off 




%figure(3)
error0 = std(wattage_0_test_2)*ones(1,2);
error2 = std(wattage_5_test_2)*ones(1,2);
error3 = std(wattage_test_3)*ones(1,2);
error4 = std(wattage_test_4_25)*ones(1,2);
error5 = std(wattage_test_4_50)*ones(1,2);


errorbar([0,wattage_0_test_2(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)
errorbar([0,wattage_5_test_2(1)]    ,[0,delta_t(1)]         ,error2,'horizontal','--',LineWidth=1.5)
errorbar([0,wattage_test_3(1)]      ,[0,delta_test_3(1)]    ,error3,'horizontal',LineWidth=1.5)
errorbar([0,wattage_test_4_25(1)]   ,[0,delta_test_4_25(1)] ,error4,'horizontal',LineWidth=1.5)
errorbar([0,wattage_test_4_50(1)]   ,[0,delta_test_4_50(1)] ,error5,'horizontal',LineWidth=1.5)

%scatter(wattage_0_test_2,deltaT_0_test_2)

legend({'test 2 ss' 'test 2 5w' 'test 3' 'test 4 25' 'test 4 50'},location='best')

%% Full fin plate

% 5 W fan 25
figure(2)


v =       [1.37,1.38,1.39,1.39,1.40,1.41,1.40,1.39,1.42,1.40];
delta_t = [5.4,5.3,5.3,5.3,5.3,5.4,5.3,5.3,5.3,5.3];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)

hold on
% W10 fan 25

v =       [1.41,1.39,1.43,1.44,1.44,1.44,1.42,1.45,1.45,1.47];
delta_t = [10.9,10.9,10.9,10.9,10.9,10.9,10.9,10.9,10.9,10.9];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)

%W10 fan 50

v =       [3.05,3.07,3.04,3.16,3.14,3.10,3.19,3.15,3.28,3.26];
delta_t = [6.9,6.9,7.0,6.9,6.9,7.0,7.0,6.9,6.9,7.0];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)


%W20 
v =       [1.41,1.41,1.41,1.41,1.43,1.43,1.45,1.43,1.45,1.46,1.48];
delta_t = [0.100,0.100,0.100,0.100,0.100,0.100,0.100,0.100,0.100,0.100,0.100];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)


legend({'5W fan 25' '10W fan 25' '10W fan 50' '20W'})
ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')
grid on

%%
figure(3)
%bigfin_test2_5W
v =       [1.22,1.23,1.25,1.26,1.27,1.23,1.24,1.25,1.25,1.27];
delta_t = [4.3,4.3,4.3,4.3,4.3,4.3,4.3,4.3,4.3,4.3];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)
hold on 

%bigfin_test2_20W
v =       [1.23,1.24,1.26,1.25,1.25,1.25,1.25,1.27,1.25,1.26,1.25];
delta_t = [19.5,19.5,19.5,19.5,19.5,19.5,19.5,19.4,19.5,19.5,19.5];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)
%thereal_test3_5W
v =       [1.25,1.28,1.28,1.29,1.28,1.30,1.29,1.28,1.28,1.31];
delta_t = [7.3,7.3,7.3,7.2,7.3,7.3,7.2,7.3,7.2,7.3];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)
%Bigfin_test4_50percent

v =       [2.80,2.83,2.83,2.88,2.83,2.85,2.85,2.86,2.87,2.87];
delta_t = [5.6,5.7,5.6,5.6,5.7,5.6,5.7,5.6,5.6,5.6];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)

%Bigfin_test4_fan25
v =       [1.23,1.24,1.24,1.25,1.26,1.25,1.25,1.26,1.25,1.27];
delta_t = [9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4];
error0 = std(v)*ones(1,2);
errorbar([0,v(1)]    ,[0,delta_t(1)]         ,error0,'horizontal',LineWidth=1.5)

legend({'bigfin test2 5W' 'bigfin test2 20W' 'thereal test3 5W' 'Bigfin test4 50percent' 'Bigfin test4 fan25'})
ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')
grid on

