clear; clc; close all;

% PART 2
% looking after the oscillations for the k1 value


%load('Test2_error_analysis\07-Feb-2025 11_24_33.mat')
%plot(time,target_v,'--'); hold on
%plot(time,duty)
%plot(time,enc1)
%legend('target_v', 'duty', 'enc1')
%grid on 
%box on

k_array = zeros(1,5);

% Test2_error_analysis\07-Feb-2025 11_21_31.mat
% hard coding values 
disp = 3422; % disp from the enc1 (counts_
force = 491; % voltage (from duty cycle
k1 = force/disp;
index = 1;
k_array(index) = k1; 

% Test2_error_analysis\07-Feb-2025 11_22_22.mat
% hard coding values 
disp = 3482; % disp from the enc1 (counts_
force = 491; % voltage (from duty cycle
k1 = force/disp;
index = index +1;
k_array(index) = k1; 

% Test2_error_analysis\07-Feb-2025 11_23_51.mat
% hard coding values 
disp = 3401; % disp from the enc1 (counts_
force = 491; % voltage (from duty cycle
k1 = force/disp;
index = index +1;
k_array(index) = k1; 


% Test2_error_analysis\07-Feb-2025 11_24_33.mat
% hard coding values 
disp = 3392; % disp from the enc1 (counts_
force = 491; % voltage (from duty cycle
k1 = force/disp;
index = index +1;
k_array(index) = k1; 

% Test2_error_analysis\07-Feb-2025 11_25_10.mat
% hard coding values 
disp = 3409; % disp from the enc1 (counts_
force = 491; % voltage (from duty cycle
k1 = force/disp;
index = index +1;
k_array(index) = k1; 

mean(k_array(:))