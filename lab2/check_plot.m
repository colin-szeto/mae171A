clear; close all; clc; 
% objective: check the y_0 t_0 y_n t_n y_inf hard coded 


% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_28_21.mat
dir = 'Test3_error_analysis\07-Feb-2025 11_28_21.mat';
load(dir)
plot(time,enc2); hold on
title(dir)


n = 8;
y_0 = 4468;
t_0 = 5.774;
y_n = -898;
t_n = 9.023;
y_inf = -1350;

plot(t_0,y_0,'o',markersize=10)
plot(t_n,y_n,'o',markersize=10)
plot([t_0 t_n],[y_inf y_inf],'--')



