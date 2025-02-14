clear; clc; close all; 
%%
% PART 3
% held m1 in place, applied unknown force onto m2
% option: isolating for k2
clear;close all
dir ='Test3_error_analysis\07-Feb-2025 11_28_21.mat'
load(dir)
plot(time,enc2)
title(dir)
grid on 
box on
hold on

clear;close all
dir =          'Test3_error_analysis\07-Feb-2025 11_29_09.mat'
load(dir)
plot(time,enc2)
title(dir)
grid on 
box on
hold on

clear;close all
dir =          'Test3_error_analysis\07-Feb-2025 11_29_56.mat'
load(dir)
plot(time,enc2)
title(dir)
grid on 
box on
hold on

clear;close all
dir =          'Test3_error_analysis\07-Feb-2025 11_30_30.mat'
load(dir)
plot(time,enc2)
title(dir)
grid on 
box on
hold on

clear;close all
dir =          'Test3_error_analysis\07-Feb-2025 11_32_48.mat'
load(dir)
plot(time,enc2)
title(dir)
grid on 
box on
hold on

legend('test1', 'test2', 'test3', 'test4', 'test5')
%%
clear; close all; clc;

w_hat_n_array = zeros(1,5);
beta_hat_array = zeros(1,5);
w_hat_d_array = zeros(1,5);

index_n = 0;

% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_28_21.mat
n = 9;
y_0 = 4468;
t_0 = 5.774;
y_n = -898;
t_n = 9.023;
y_inf = -1350;

index_n = index_n + 1;
w_hat_d_array(index_n) = 2*pi*(n/(t_n - t_0));
beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));
w_hat_n_array(index_n) = norm(w_hat_d_array(index_n), beta_w_n);
beta_hat_array(index_n) = beta_w_n/w_hat_n_array(index_n);

% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_29_09.mat
n = 5;
y_0 = 2709;
t_0 = 2.065;
y_n = 300;
t_n = 4.076;
y_inf = -5;
index_n = index_n + 1;

w_hat_d_array(index_n) = 2*pi*(n/(t_n - t_0));
beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));
w_hat_n_array(index_n) = norm(w_hat_d_array(index_n), beta_w_n);
beta_hat_array(index_n) = beta_w_n/w_hat_n_array(index_n);

% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_29_56.mat
n = 6;
y_0 = 2736;
t_0 = 3.425;
y_n = 178;
t_n = 5.445;
y_inf = 3;
index_n = index_n + 1;

w_hat_d_array(index_n) = 2*pi*(n/(t_n - t_0));
beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));
w_hat_n_array(index_n) = norm(w_hat_d_array(index_n), beta_w_n);
beta_hat_array(index_n) = beta_w_n/w_hat_n_array(index_n);

% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_30_30.mat
n = 7;
y_0 = 3688;
t_0 = 3.97;
y_n = 179;
t_n = 6.387;
y_inf = -107;
index_n = index_n + 1;

w_hat_d_array(index_n) = 2*pi*(n/(t_n - t_0));
beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));
w_hat_n_array(index_n) = norm(w_hat_d_array(index_n), beta_w_n);
beta_hat_array(index_n) = beta_w_n/w_hat_n_array(index_n);

% hardcoded from graph Test3_error_analysis\07-Feb-2025 11_32_48.mat
n = 7;
y_0 = 3655;
t_0 = 3.979;
y_n = 151;
t_n = 6.419;
y_inf = -107;
index_n = index_n + 1;

w_hat_d_array(index_n) = 2*pi*(n/(t_n - t_0));
beta_w_n = 1/(t_n - t_0)*log((y_0 - y_inf)/(y_n - y_inf));

w_hat_n_array(index_n) = norm(w_hat_d_array(index_n), beta_w_n);
beta_hat_array(index_n) = beta_w_n/w_hat_n_array(index_n);


w_hat_n = mean(w_hat_n_array(:));
beta_hat = mean(beta_hat_array(:));
w_hat_d = mean(w_hat_d_array(:));



k1 =     0.1435; % from part 2
k_hat_og = 3.3864e-04; % from part 1
k_hat =   k_hat_og  - k1; % k2
m_hat =  (k_hat) *(1/w_hat_d);

d_hat = k_hat* 2 * (2*beta_hat/m_hat); % d2

m_hat
d_hat






