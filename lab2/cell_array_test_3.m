clear; clc; close all; 

%% Load and Plot Data
dir_list = { ...
    'Test3_error_analysis\07-Feb-2025 11_28_21.mat', ...
    'Test3_error_analysis\07-Feb-2025 11_29_09.mat', ...
    'Test3_error_analysis\07-Feb-2025 11_29_56.mat', ...
    'Test3_error_analysis\07-Feb-2025 11_30_30.mat', ...
    'Test3_error_analysis\07-Feb-2025 11_32_48.mat' ...
};

figure; hold on; grid on; box on;
for i = 1:length(dir_list)
    load(dir_list{i});
    plot(time, enc2, 'DisplayName', ['Test ' num2str(i)]);
end
legend();
title('Test Data');
hold off;

%% Store Data in a Cell Array
% Each row corresponds to a test
% Columns: {n, y_0, t_0, y_n, t_n, y_inf}
test_data = {
    8,  4468, 5.774, -898,  9.023, -1350;
    5,  2709, 2.065,  300,  4.076, -5;
    5,  2736, 3.425,  178,  5.445, 3;
    6,  3688, 3.970,  179,  6.387, -107;
    7,  4556, 1.223,  87,  4.103, -131;
};


%% Compute w_hat_n, beta_hat, and w_hat_d
num_tests = size(test_data, 1);

w_hat_n_array = zeros(1, num_tests);
beta_hat_array = zeros(1, num_tests);
w_hat_d_array = zeros(1, num_tests);

for i = 1:num_tests
    n = test_data{i, 1};
    y_0 = test_data{i, 2};
    t_0 = test_data{i, 3};
    y_n = test_data{i, 4};
    t_n = test_data{i, 5};
    y_inf = test_data{i, 6};

    w_hat_d_array(i) = 2 * pi * (n / (t_n - t_0));%GOOD
    beta_w_n = (1 / (t_n - t_0)) * log((y_0 - y_inf) / (y_n - y_inf));
    w_hat_n_array(i) = sqrt(w_hat_d_array(i)^2 + beta_w_n^2);
    beta_hat_array(i) = beta_w_n / w_hat_n_array(i);
end

% Compute Averages
w_hat_n = mean(w_hat_n_array);
beta_hat = mean(beta_hat_array);
w_hat_d = mean(w_hat_d_array);

%% Compute k_hat, m_hat, and d_hat
k1 =   1.7539e-04; % from part 2
k_hat_og = 3.3864e-04; % from part 1
k_hat = k_hat_og - k1; % k2

m_hat = (k_hat) * (1 / w_hat_n^2);
d_hat = k_hat * (2 * beta_hat / w_hat_n); % d2

%% Display Results
disp('Computed Values:');
fprintf('k_hat = %.6f\n', k_hat);
fprintf('m_hat = %.6f\n', m_hat);
fprintf('d_hat = %.6f\n', d_hat);
