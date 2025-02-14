clear; close all; clc; 

load('test_2_07-Feb-2025 11_21_31.mat')
load('07-Feb-2025 11_22_22.mat')
%load('07-Feb-2025 11_23_51.mat')
%load('07-Feb-2025 11_24_33.mat')
%load('07-Feb-2025 11_25_10.mat')

enc1 = enc1(time>=5);
enc2 = enc2(time>=5);
duty = duty(time>=5);
target_v = target_v(time>=5);
time = time(time>=5)-5;