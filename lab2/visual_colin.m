clear; clc; close all;
dir

dir_name = 'Test1_error_analysis/07-Feb-2025 11_20_26.mat';
load(dir_name)
%load('\econder1_hold_07-Feb-2025 09_35_19')

plot(time,enc1)
title(replace(dir_name,'_',' '))

grid on 
box on
    

%% PART 1

%Test1_error_analysis/07-Feb-2025 11_16_25.mat

U = 0.6;
% hardcoded from graph
n = 4; % number of beaks
y_0 = 3063;
t_0 = 5.136;
y_n = 1905;
t_n = 5.914;
y_inf = 1772;

w_hat_d = 2*pi*(n/(t_n - t_0));

beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n = norm(w_hat_d, beta_w_n);

beta_hat = beta_w_n/w_hat_n;

k_hat = U/y_inf
m_hat = k_hat/(w_hat_n^2) % m1
d_hat = k_hat*(2*beta_hat/w_hat_n)% d1

%% Test1_error_analysis/07-Feb-2025 11_17_48.mat

U = 0.6;
% hardcoded from graph
n = 4; % number of beaks
y_0 = 2948;
t_0 = 5.155;
y_n = 1816;
t_n = 5.923;
y_inf = 1658;

w_hat_d = 2*pi*(n/(t_n - t_0));

beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n = norm(w_hat_d, beta_w_n);

beta_hat = beta_w_n/w_hat_n;

k_hat = U/y_inf
m_hat = k_hat/(w_hat_n^2) % m1
d_hat = k_hat*(2*beta_hat/w_hat_n)% d1

%% Test1_error_analysis/07-Feb-2025 11_18_23.mat

U = 0.6;
% hardcoded from graph
n = 4; % number of beaks
y_0 = 3201;
t_0 = 5.148;
y_n = 2001;
t_n = 5.934;
y_inf = 1846;

w_hat_d = 2*pi*(n/(t_n - t_0));

beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n = norm(w_hat_d, beta_w_n);

beta_hat = beta_w_n/w_hat_n;

k_hat = U/y_inf
m_hat = k_hat/(w_hat_n^2) % m1
d_hat = k_hat*(2*beta_hat/w_hat_n)% d1

%% Test1_error_analysis/07-Feb-2025 11_18_59.mat

U = 0.6;
% hardcoded from graph
n = 4; % number of beaks
y_0 = 3049;
t_0 = 5.143;
y_n = 1906;
t_n = 5.93;
y_inf = 1750;

w_hat_d = 2*pi*(n/(t_n - t_0));

beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n = norm(w_hat_d, beta_w_n);

beta_hat = beta_w_n/w_hat_n;

k_hat = U/y_inf
m_hat = k_hat/(w_hat_n^2) % m1
d_hat = k_hat*(2*beta_hat/w_hat_n)% d1

%% Test1_error_analysis/07-Feb-2025 11_20_26.mat

U = 0.6;
% hardcoded from graph
n = 4; % number of beaks
y_0 = 3207;
t_0 = 5.145;
y_n = 2029;
t_n = 5.922;
y_inf = 1847;

w_hat_d = 2*pi*(n/(t_n - t_0));

beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n = norm(w_hat_d, beta_w_n);

beta_hat = beta_w_n/w_hat_n;

k_hat = U/y_inf
m_hat = k_hat/(w_hat_n^2) % m1
d_hat = k_hat*(2*beta_hat/w_hat_n)% d1