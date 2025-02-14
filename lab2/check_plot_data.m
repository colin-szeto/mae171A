clear; close all; clc; 
% objective: check the y_0 t_0 y_n t_n y_inf hard coded 


% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_28_21.mat

dir_data = {}

dir_data{1} = 'Test3_error_analysis\07-Feb-2025 11_28_21.mat'; %
dir_data{2} = 'Test3_error_analysis\07-Feb-2025 11_29_09.mat'; 
dir_data{3} = 'Test3_error_analysis\07-Feb-2025 11_29_56.mat';
dir_data{4} = 'Test3_error_analysis\07-Feb-2025 11_30_30.mat';
dir_data{5} = 'Test3_error_analysis\07-Feb-2025 11_32_48.mat';

index_n = 2;


load(dir_data{index_n})
plot(time,enc2); hold on
title(dir_data{index_n})


%n = 8;
%y_0 = 4468;
%t_0 = 5.774;
%y_n = -898;
%t_n = 9.023;
%y_inf = -1350;

% Columns: {n, y_0, t_0, y_n, t_n, y_inf}
test_data = {
    8,  4468, 5.774, -898,  9.023, -1350;
    5,  2709, 2.065,  300,  4.076, -5;
    5,  2736, 3.425,  178,  5.445, 3;
    6,  3688, 3.970,  179,  6.387, -107;
    7,  4556, 1.223,  87,  4.103, -131;
};

n = test_data{index_n,1};
y_0 = test_data{index_n,2};
t_0 = test_data{index_n,3};
y_n = test_data{index_n,4};
t_n = test_data{index_n,5};
y_inf = test_data{index_n,6};

plot(t_0,y_0,'o',markersize=10)
plot(t_n,y_n,'o',markersize=10)
plot([t_0 t_n],[y_inf y_inf],'--')



