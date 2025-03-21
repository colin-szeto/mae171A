clear all; close all; clc;
Re_values_BigFin = {
   [7830, 7893, 7894, 7894, 7894, 7956, 7957, 8020, 8020, 8020], ... % fan25 - Re
   [7908, 8099, 8100, 8163, 8164, 8164, 8227, 8228, 8291, 8291], ... % test_5W - Re
   [17688, 18010, 18071, 18200, 18201, 18201, 18203, 18328, 18328, 18520], ... % fan50 - Re
   [7542, 7543, 7665, 7665, 7666, 7666, 7666, 7726, 7727, 7788] % Dataset 4 - Re
};
Nu_values_BigFin = {
   [206, 206, 206, 206, 206, 206, 206, 206, 206, 206], ... % fan25 - Nu
   [131, 131, 131, 137, 131, 130, 132, 136, 137, 137], ... % test_5W - Nu
   [347, 344, 347, 346, 345, 345, 345, 347, 347, 347], ... % fan50 - Nu
   [199, 194, 195, 199, 194, 199, 199, 195, 195, 199] % test_20W  - Nu
};
deltaT_values_BigFin = {
   [9.4, 9.4, 9.4, 9.4, 9.4, 9.4, 9.4, 9.4, 9.4, 9.4], ... % fan25 - deltaT
   [7.3, 7.3, 7.3, 7.2, 7.3, 7.3, 7.2, 7.3, 7.2, 7.3], ... % test_5W - deltaT
   [5.6, 5.7, 5.6, 5.6, 5.7, 5.6, 5.7, 5.6, 5.6, 5.6], ... % fan50 - deltaT
   [19.5, 19.5, 19.5, 19.5, 19.5, 19.5, 19.5, 19.4, 19.5, 19.5] % test_20W 
};
Power_values_BigFin = {
   10, ... % fan25 
   5, ... % test_5W 
   10, ... % fan50 
   20 % test_20W 
};
name = {
   'BigFin_fan25'
   'BigFin_test_5W'
   'Bigfan50'
   'Bigtest_20W'
};
Power_vals_BigFin = [Power_values_BigFin{2}, Power_values_BigFin{4}]; % 5W and 20W
avgDeltaT_vals_BigFin = [mean(deltaT_values_BigFin{2}), mean(deltaT_values_BigFin{4})]; % Corresponding deltaT
avgRe_vals_BigFin = [mean(Re_values_BigFin{2}), mean(Re_values_BigFin{4})];
%For plot 3
avgRe_vals_BigFin_Fan = [mean(Re_values_BigFin{1}), mean(Re_values_BigFin{3})];
avgNu_vals_BigFin_Fan = [mean(Nu_values_BigFin{1}), mean(Nu_values_BigFin{3})];
Re_values_FullFinPlate = {
   [8751, 8814, 8877, 8879, 8941, 8942, 8942, 8942, 9006, 9070], ... % 5W
   [8874, 8875, 8937, 8938, 9001, 9062, 9063, 9126, 9126, 9189], ... % 10W
   [19356, 19419, 19612, 19673, 19929, 19930, 19994, 20119, 20757, 20821], ... % 10W (high Re)
   [8480, 8601, 8662, 8662, 8663, 8723, 8784, 8784, 8846, 8846] % 20W
};
Nu_values_FullFinPlate = {
   [182, 177, 182, 177, 183, 182, 183, 182, 182, 177], ... % 5W
   [178, 178, 178, 178, 178, 178, 178, 178, 178, 178], ... % 10W
   [281, 281, 280, 281, 281, 280, 280, 281, 281, 280], ... % 10W (high Re)
   [176, 176, 176, 176, 176, 176, 176, 176, 173, 173] % 20W
};
deltaT_values_FullFinPlate = {
   [5.4, 5.3, 5.3, 5.3, 5.3, 5.4, 5.3, 5.3, 5.3, 5.3], ... % 5W
   [10.9, 10.9, 10.9, 10.9, 10.9, 10.9, 10.9, 10.9, 10.9, 10.9], ... % 10W
   [6.9, 6.9, 7.0, 6.9, 6.9, 7.0, 7.0, 6.9, 6.9, 7.0], ... % 10W (high Re)
   [21.7, 21.8, 21.7, 21.8, 21.8, 21.8, 21.7, 21.8, 21.8, 21.8] % 20W
};
Power_values_FullFinPlate = {
   5, ... % 5W
   10, ... % 10W
   10, ... % 10W (high Re)
   20 % 20W
};
Power_vals_FullFinPlate = [Power_values_FullFinPlate{1}, Power_values_FullFinPlate{4}]; % 5W and 20W
avgDeltaT_vals_FullFinPlate = [mean(deltaT_values_FullFinPlate{1}), mean(deltaT_values_FullFinPlate{4})]; % Corresponding deltaT
avgRe_vals_FullFinPlate = [mean(Re_values_FullFinPlate{1}), mean(Re_values_FullFinPlate{4})];
%For plot 3
avgRe_vals_FullFinPlate_Fan = [mean(Re_values_FullFinPlate{2}), mean(Re_values_FullFinPlate{3})];
avgNu_vals_FullFinPlate_Fan = [mean(Nu_values_FullFinPlate{2}), mean(Nu_values_FullFinPlate{3})];
Re_values_3row = {
   [7523, 7523, 7523, 7587, 7652, 7717, 7718, 7719, 7780, 7781, 7909], ... % New Data
   [7437, 7507, 7507, 7507, 7564, 7564, 7565, 7569, 7569, 7570, 7570, 7631, 7694, 7755, 7755, 7755, 7755, 7756, 7819, 7946], ... % 10W
   [7507, 7507, 7507, 7569, 7569, 7570, 7570, 7631, 7694, 7755], ... % 20W
   [18104, 18296, 18426, 18488, 18497, 18562, 18563, 18681, 18684, 18813] % High Re
};
Nu_values_3row = {
   [296, 297, 296, 288, 294, 282, 276, 275, 281, 280, 296], ... % New Data
   [260, 260, 259, 259, 260, 259, 259, 258, 258, 257], ... % 10W
   [243, 243, 244, 243, 243, 238, 237, 238, 243, 238], ... % 20W
   [499, 505, 500, 509, 494, 498, 496, 508, 504, 501] % High Re
};
deltaT_values_3row = {
   [3.4, 3.4, 3.4, 3.4, 3.4, 3.4, 3.5, 3.5, 3.4, 3.4, 3.4], ... % New Data
   [7.5, 7.5, 7.5, 7.5, 7.5, 7.5, 7.5, 7.6, 7.5, 7.6], ... % 10W
   [16.1, 16.1, 16.0, 16.1, 16.1, 16.1, 16.1, 16.1, 16.1, 16.1], ... % 20W
   [3.9, 3.9, 3.9, 3.8, 4.0, 3.9, 3.9, 3.8, 3.9, 3.9] % High Re
};
Power_values_3row = {
   5, ... % New Data
   10, ... % 10W
   20, ... % 20W
   10 % High Re
};
Power_vals_3row = [Power_values_3row{1}, Power_values_3row{3}]; % 5W and 20W
avgDeltaT_vals_3row = [mean(deltaT_values_3row{1}), mean(deltaT_values_3row{3})]; % Corresponding deltaT
avgRe_vals_3row = [mean(Re_values_3row{1}), mean(Re_values_3row{3})]; % Corresponding deltaT
%For plot 3
avgRe_vals_3row_Fan = [mean(Re_values_3row{2}), mean(Re_values_3row{4})];
avgNu_vals_3row_Fan = [mean(Nu_values_3row{2}), mean(Nu_values_3row{4})];
Re_values_Pope = {
   [8762, 8954, 9018, 9018, 9208, 9208, 9208, 9272, 9334, 9336], ... % New Data
   [8272, 8272, 8332, 8453, 8512, 8571, 8633, 8692, 8754, 8813], ... % 10W
   [8522, 8584, 8585, 8585, 8585, 8647, 8647, 8772, 8833, 8958], ... % 20W
   [19299, 19743, 19869, 19930, 19997, 20058, 20120, 20247, 20313, 20438] % High Re
};
Nu_values_Pope = {
   [146, 144, 145, 143, 144, 145, 144, 144, 146, 144], ... % New Data
   [138, 138, 138, 138, 138, 138, 138, 138, 136, 138], ... % 10W
   [142, 141, 141, 141, 141, 142, 141, 141, 141, 141], ... % 20W
   [241, 239, 239, 241, 241, 241, 240, 241, 239, 240] % High Re
};
deltaT_values_Pope = {
   [6.8, 6.8, 6.8, 6.8, 6.8, 6.8, 6.8, 6.8, 6.7, 6.8], ... % New Data
   [27.6, 27.5, 27.5, 27.5, 27.6, 27.6, 27.6, 27.5, 27.6, 27.6], ... % 10W
   [13.6, 13.6, 13.7, 13.6, 13.6, 13.6, 13.7, 13.6, 13.7, 13.7], ... % 20W
   [8.1, 8.1, 8.1, 8.1, 8.1, 8.1, 8.1, 8.1, 8.1, 8.1] % High Re
};
Power_values_Pope = {
   5, ... % New Data
   20, ... % 10W
   10, ... % 20W
   10 % High Re
};
Power_vals_Pope = [Power_values_Pope{1}, Power_values_Pope{2}]; % 5W and 20W
avgDeltaT_vals_Pope = [mean(deltaT_values_Pope{1}), mean(deltaT_values_Pope{2})];
avgRe_vals_Pope = [mean(Re_values_Pope{1}), mean(Re_values_Pope{2})];
%For plot 3
avgRe_vals_Pope_Fan = [mean(Re_values_Pope{3}), mean(Re_values_Pope{4})];
avgNu_vals_Pope_Fan = [mean(Nu_values_Pope{3}), mean(Nu_values_Pope{4})];
%% Plot the line
figure(1);
plot(Power_vals_BigFin, avgDeltaT_vals_BigFin, '-r', 'LineWidth', 2, 'MarkerSize', 8);
hold on
errorbar(   Power_vals_BigFin(1)        ,avgDeltaT_vals_BigFin(1),std(deltaT_values_BigFin{2}),'vertical',color='r',LineWidth=2)
errorbar(   Power_vals_BigFin(2)        ,avgDeltaT_vals_BigFin(2),std(deltaT_values_BigFin{4}),'vertical',color='r',LineWidth=2)
plot(       Power_vals_FullFinPlate     ,avgDeltaT_vals_FullFinPlate, '-k', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(   Power_vals_FullFinPlate(1)  ,avgDeltaT_vals_FullFinPlate(1),std(deltaT_values_FullFinPlate{1}),'vertical',color='k',LineWidth=2)
errorbar(   Power_vals_FullFinPlate(2)  ,avgDeltaT_vals_FullFinPlate(2),std(deltaT_values_FullFinPlate{4}),'vertical',color='k',LineWidth=2)
plot(       Power_vals_3row             ,avgDeltaT_vals_3row, '-b', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(   Power_vals_3row(1)          ,avgDeltaT_vals_3row(1),std(deltaT_values_3row{1}),'vertical',color='b',LineWidth=2) % 10 W
errorbar(   Power_vals_3row(2)          ,avgDeltaT_vals_3row(2),std(deltaT_values_3row{3}),'vertical',color='b',LineWidth=2) % 20 W
plot(       Power_vals_Pope             ,avgDeltaT_vals_Pope, '-g', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(   Power_vals_Pope(1)          ,avgDeltaT_vals_Pope(1),std(deltaT_values_Pope{1}),'vertical',color='g',LineWidth=2)
errorbar(   Power_vals_Pope(2)          ,avgDeltaT_vals_Pope(2),std(deltaT_values_Pope{2}),'vertical',color='g',LineWidth=2)
hold off
grid on
xlabel('Power (W)');
ylabel('Average \DeltaT (°C)');
title('Fin Design: Power vs. Average Temperature Difference');
legend('BigFin','','','FullPlate','','','3row','','','Pope','','',location = 'northwest')

%Power_vals_BigFin(1)       % -std(deltaT_values_BigFin{2})
%Power_vals_BigFin(2)       % -std(deltaT_values_BigFin{4})
%Power_vals_FullFinPlate(1) % - std(deltaT_values_FullFinPlate{1})
%Power_vals_FullFinPlate(2) % - std(deltaT_values_FullFinPlate{4})
%Power_vals_3row(1)         %-std(deltaT_values_3row{1})        
%Power_vals_3row(2)         %-std(deltaT_values_3row{3})        
%Power_vals_Pope(1)         %-std(deltaT_values_Pope{1})         
%Power_vals_Pope(2)         %-std(deltaT_values_Pope{2})         

%std(deltaT_values_BigFin{2})
%std(deltaT_values_BigFin{4})
%std(deltaT_values_FullFinPlate{1})
%std(deltaT_values_FullFinPlate{4})
%std(deltaT_values_3row{1})        
%std(deltaT_values_3row{3})        
%std(deltaT_values_Pope{1})         
%std(deltaT_values_Pope{2})      

%fprintf('avgDeltaT_vals\n %15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f\n',avgDeltaT_vals_BigFin(1)      ,avgDeltaT_vals_BigFin(2)      ,avgDeltaT_vals_FullFinPlate(1),avgDeltaT_vals_FullFinPlate(2),avgDeltaT_vals_3row(1)        ,avgDeltaT_vals_3row(2)        ,avgDeltaT_vals_Pope(1)        ,avgDeltaT_vals_Pope(2));
%fprintf('powerVals\n %15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f\n',Power_vals_BigFin(1)      ,Power_vals_BigFin(2)      ,Power_vals_FullFinPlate(1),Power_vals_FullFinPlate(2),Power_vals_3row(1)        ,Power_vals_3row(2)        ,Power_vals_Pope(1)        ,Power_vals_Pope(2));
%fprintf('std_vals\n  %15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f,\n%15.5f\n',std(deltaT_values_BigFin{2}),std(deltaT_values_BigFin{4}),std(deltaT_values_FullFinPlate{1}),std(deltaT_values_FullFinPlate{4}),std(deltaT_values_3row{1})        ,std(deltaT_values_3row{3})        ,std(deltaT_values_Pope{1})         ,std(deltaT_values_Pope{2}));

power_vals_all = [...
Power_vals_BigFin(1)  ;
Power_vals_BigFin(2);
Power_vals_FullFinPlate(1);
Power_vals_FullFinPlate(2);
Power_vals_3row(1)        ;
Power_vals_3row(2)        ;
Power_vals_Pope(1);
Power_vals_Pope(2);];

avgRe_vals_all = [...
avgDeltaT_vals_BigFin(1)      ;
avgDeltaT_vals_BigFin(2)      ;
avgDeltaT_vals_FullFinPlate(1);
avgDeltaT_vals_FullFinPlate(2);
avgDeltaT_vals_3row(1)        ;
avgDeltaT_vals_3row(2)        ;
avgDeltaT_vals_Pope(1)        ;
avgDeltaT_vals_Pope(2)        ;];

std_vals_all = [...
std(deltaT_values_BigFin{2});
std(deltaT_values_BigFin{4});
std(deltaT_values_FullFinPlate{1});
std(deltaT_values_FullFinPlate{4});
std(deltaT_values_3row{1});
std(deltaT_values_3row{3});
std(deltaT_values_Pope{1});
std(deltaT_values_Pope{2});];

clc
fprintf('deltaT_vals_all\n');
for i = 1:length(avgRe_vals_all)
fprintf('%2.0f, %15.5f, %15.5f, %15.5f , %15.5f  \n',power_vals_all(i),avgRe_vals_all(i),std_vals_all(i),avgRe_vals_all(i)-std_vals_all(i), avgRe_vals_all(i)+std_vals_all(i) )
end

%%
figure(2);
h = plot(Power_vals_BigFin, avgRe_vals_BigFin, '-r', 'LineWidth', 2, 'MarkerSize', 8);
hold on
errorbar(Power_vals_BigFin(1),avgRe_vals_BigFin(1),std(Re_values_BigFin{2}),'vertical',color='r',LineWidth=2)
errorbar(Power_vals_BigFin(2),avgRe_vals_BigFin(2),std(Re_values_BigFin{4}),'vertical',color='r',LineWidth=2)

plot(Power_vals_FullFinPlate, avgRe_vals_FullFinPlate, '-k', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(Power_vals_FullFinPlate(1),avgRe_vals_FullFinPlate(1),std(Re_values_FullFinPlate{1}),'vertical',color='k',LineWidth=2)
errorbar(Power_vals_FullFinPlate(2),avgRe_vals_FullFinPlate(2),std(Re_values_FullFinPlate{4}),'vertical',color='k',LineWidth=2)

plot(Power_vals_3row, avgRe_vals_3row, '-b', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(Power_vals_3row(1),avgRe_vals_3row(1),std(Re_values_3row{1}),'vertical',color='b',LineWidth=2)
errorbar(Power_vals_3row(2),avgRe_vals_3row(2),std(Re_values_3row{3}),'vertical',color='b',LineWidth=2)

plot(Power_vals_Pope, avgRe_vals_Pope, '-g', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(Power_vals_Pope(1),avgRe_vals_Pope(1),std(Re_values_Pope{1}),'vertical',color='g',LineWidth=2)
errorbar(Power_vals_Pope(2),avgRe_vals_Pope(2),std(Re_values_Pope{2}),'vertical',color='g',LineWidth=2)
hold off
xlabel('Power (W)');
ylabel('Re');
title('Fin Design: Power vs. Re');
legend('BigFin','','','FullPlate','','','3row','','','Pope','','',location = 'best')
grid on
ax = ancestor(h, 'axes');
ax.XAxis.Exponent = 0;
xtickformat('%.0f');

power_vals_all = [...
Power_vals_BigFin(1)  ;
Power_vals_BigFin(2);
Power_vals_FullFinPlate(1);
Power_vals_FullFinPlate(2);
Power_vals_3row(1)        ;
Power_vals_3row(2)        ;
Power_vals_Pope(1);
Power_vals_Pope(2);];

avgRe_vals_all = [...
avgRe_vals_BigFin(1)      ;
avgRe_vals_BigFin(2)      ;
avgRe_vals_FullFinPlate(1);
avgRe_vals_FullFinPlate(2);
avgRe_vals_3row(1)        ;
avgRe_vals_3row(2)        ;
avgRe_vals_Pope(1)        ;
avgRe_vals_Pope(2)        ;];

std_vals_all = [...
std(Re_values_BigFin{2});
std(Re_values_BigFin{4});
std(Re_values_FullFinPlate{1});
std(Re_values_FullFinPlate{4});
std(Re_values_3row{1});
std(Re_values_3row{3});
std(Re_values_Pope{1});
std(Re_values_Pope{2});];


fprintf('avgRe_vals_all\n');
for i = 1:length(avgRe_vals_all)
fprintf('%2.0f, %15.5f, %15.5f, %15.5f , %15.5f  \n',power_vals_all(i),avgRe_vals_all(i),std_vals_all(i),avgRe_vals_all(i)-std_vals_all(i), avgRe_vals_all(i)+std_vals_all(i) )
end
%%
figure(3);
h = plot(avgRe_vals_BigFin_Fan, avgNu_vals_BigFin_Fan, '-r', 'LineWidth', 2, 'MarkerSize', 8);
hold on
errorbar(avgRe_vals_BigFin_Fan(1),avgNu_vals_BigFin_Fan(1),std(Nu_values_BigFin{1}),'vertical',color='r',LineWidth=2)
errorbar(avgRe_vals_BigFin_Fan(2),avgNu_vals_BigFin_Fan(2),std(Nu_values_BigFin{3}),'vertical',color='r',LineWidth=2)

plot(avgRe_vals_FullFinPlate_Fan, avgNu_vals_FullFinPlate_Fan,'-k', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(avgRe_vals_FullFinPlate_Fan(1),avgNu_vals_FullFinPlate_Fan(1),std(Nu_values_FullFinPlate{2}),'vertical',color='k',LineWidth=2)
errorbar(avgRe_vals_FullFinPlate_Fan(2),avgNu_vals_FullFinPlate_Fan(2),std(Nu_values_FullFinPlate{3}),'vertical',color='k',LineWidth=2)

plot(avgRe_vals_3row_Fan,avgNu_vals_3row_Fan, '-b', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(avgRe_vals_3row_Fan(1),avgNu_vals_3row_Fan(1),std(Nu_values_3row{2}),'vertical',color='b',LineWidth=2)
errorbar(avgRe_vals_3row_Fan(2),avgNu_vals_3row_Fan(2),std(Nu_values_3row{4}),'vertical',color='b',LineWidth=2)

plot(avgRe_vals_Pope_Fan, avgNu_vals_Pope_Fan, '-g', 'LineWidth', 2, 'MarkerSize', 8);
errorbar(avgRe_vals_Pope_Fan(1),avgNu_vals_Pope_Fan(1),std(Nu_values_Pope{3}),'vertical',color='g',LineWidth=2)
errorbar(avgRe_vals_Pope_Fan(2),avgNu_vals_Pope_Fan(2),std(Nu_values_Pope{4}),'vertical',color='g',LineWidth=2)
hold off
xlabel('Re');
ylabel('Nu');
title('Fin Design: Re vs. Nu of 25% and 50% fan');
legend('BigFin','','','FullPlate','','','3row','','','Pope','','',location = 'northwest')
grid on
ax = ancestor(h, 'axes');
ax.XAxis.Exponent = 0;
xtickformat('%.0f');


power_vals_all = [...
avgRe_vals_BigFin_Fan(1)      ;
avgRe_vals_BigFin_Fan(2)      ;
avgRe_vals_FullFinPlate_Fan(1);
avgRe_vals_FullFinPlate_Fan(2);
avgRe_vals_3row_Fan(1)        ;
avgRe_vals_3row_Fan(2)        ;
avgRe_vals_Pope_Fan(1)        ;
avgRe_vals_Pope_Fan(2)        ;];


avgRe_vals_all = [...
avgNu_vals_BigFin_Fan(1)  ;
avgNu_vals_BigFin_Fan(2);
avgNu_vals_FullFinPlate_Fan(1);
avgNu_vals_FullFinPlate_Fan(2);
avgNu_vals_3row_Fan(1)        ;
avgNu_vals_3row_Fan(2)        ;
avgNu_vals_Pope_Fan(1);
avgNu_vals_Pope_Fan(2);];


std_vals_all = [...
std(Re_values_BigFin{1});
std(Re_values_BigFin{2});
std(Re_values_FullFinPlate{1});
std(Re_values_FullFinPlate{2});
std(Re_values_3row{2});
std(Re_values_3row{4});
std(Re_values_Pope{3});
std(Re_values_Pope{4});];

clc
fprintf('avgRe_Nu_all\n');
for i = 1:length(avgRe_vals_all)
fprintf('%2.0f, %15.5f, %15.5f, %15.5f , %15.5f  \n',power_vals_all(i),avgRe_vals_all(i),std_vals_all(i),avgRe_vals_all(i)-std_vals_all(i), avgRe_vals_all(i)+std_vals_all(i) )
end

