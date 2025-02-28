clear; 
close all; clc; 
load('econder1_hold_07-Feb-2025 09_35_19')


plot(time,enc1)
grid on 
box on
%% 
%y = input('y')

%pks = findpeaks(enc1)
%
%plot
%
% page 12


% slide 15

U = 0.6; %V

%t_n =
%t_0 = 
%n = 

% hardcoded from graph
y_0 = 3059;
t_0 = 5.136;
y_n = 1941;
t_n = 5.921;
y_inf = 1784;

w_hat_d = @(n, t_n, t_0) 2*pi*(n/(t_n - t_0));

beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n = norm(w_hat_d, beta_w_n);

beta = beta_w_n/w_hat_n;

%Sk_hat = 