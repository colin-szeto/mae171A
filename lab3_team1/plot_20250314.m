clear; close all; clc

figure(1)
ssf_test1 = [10.0,  47.5,39;
10.0, 47.5,39;
10.0, 47.5,39;
10.0, 47.5,39;
10.2, 47.5,39;
10.0, 47.5,39;
10.0, 47.5,39;
10.0, 47.5,39;
10.0, 47.5,39;
10.2, 47.5,39;
10.0, 47.5,39;];


plot([0 mean(ssf_test1(:,1))] ,[0 mean(ssf_test1(:,2))])
title('delta over wattage test 1')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')

% skipping page 74 as all of our temp differences are the same

figure(2)
sst2 = ...
[19.8,  34.9,106;
20.1,   34.9,108;
20.3,   34.9,108;
19.8,   34.9,106;
20.3,   34.9,108;
20.3,   34.9,108;
19.8,   34.9,106;
20.3,   34.9,108;
20.2,   34.9,108;
19.8,   34.8,106;
19.8,   34.9,106;];





test25w = ...
[5.1,11.2,88;
5.1	,11.1,89;
5.1	,11.1,89;
5.1	,11.2,88;
5.0	,11.2,85;
5.1	,11.1,89;
5.0	,11.2,85;
5.0	,11.2,85;
5.1	,11.1,89;
4.9	,11.2,84;];
%10.0,10.8;
%10.0,10.8;
%10.0,10.9;
%10.0,10.8;
%10.0,10.8;
%10.0,10.8;
%10.0,10.8;
%10.0,10.8;
%10.0,10.8;
%10.0,10.9;];

plot([0 mean(ssf_test1(:,1))] ,[0 mean(ssf_test1(:,2))]) % test 1 
hold on

plot([0 mean(test25w(:,1)) mean(sst2(:,1))],[0 mean(test25w(:,2)) mean(sst2(:,2))]) % test 2


test3_5w = ...
[4.9,7.3,131;
4.9 ,7.3,131;
4.9 ,7.3,131;
5.1 ,7.2,137;
4.9 ,7.3,131;
4.9 ,7.3,130;
4.9 ,7.2,132;
5.1 ,7.3,136;
5.1 ,7.2,137;
5.1 ,7.3,137;];


test3_20w25pf = ...
[20.2,  33.7,112;
19.8,   33.7,110;
19.8,   33.7,110;
19.8,   33.6,110;
19.8,   33.7,110;
20.2,   33.7,112;
19.8,   33.7,110;
19.9,   33.7,110;
20.2,   33.7,112;
19.8,   33.7,110;
19.9,   33.6,110;];

plot([0 mean(test3_5w(:,1)) mean(test3_20w25pf(:,1))],[0 mean(test3_5w(:,2)) mean(test3_20w25pf(:,2))])


test425pf = [10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;
10.0,18.2;];


test450pf =[10.0,10.8;
10.0,10.8;
10.0,10.9;
10.0,10.8;
10.0,10.8;
10.0,10.8;
10.0,10.8;
10.0,10.8;
10.0,10.8;
10.0,10.9;];


%plot([mean(test425pf(:,1)) mean(test450pf(:,1))],[mean(test425pf(:,2)) mean(test450pf(:,2))])

%}
legend({'test1 free convection' 'test 2 forec laminar' 'test 3 forced terbulant'},Location='best')
title('delta over wattage test 2')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')

scatter(test25w(:,1),test25w(:,2),color='black',Markerfacecolor='red')
scatter(sst2(:,1),sst2(:,2),color='red',Markerfacecolor='red')


scatter(test3_5w(:,1),test3_5w(:,2),Markerfacecolor='blue')
scatter(test3_20w25pf(:,1),test3_20w25pf(:,2),Markerfacecolor='blue')

%scatter(test425pf(:,1),test425pf(:,2),Markerfacecolor='green')
%scatter(test450pf(:,1),test450pf(:,2),Markerfacecolor='green')

hold off

figure(3)

scatter(test25w(:,1),test25w(:,3),color='black',Markerfacecolor='red')
hold on
scatter(sst2(:,1),sst2(:,3),color='red',Markerfacecolor='green')
scatter(test3_5w(:,1),test3_5w(:,3),Markerfacecolor='blue')
scatter(test3_20w25pf(:,1),test3_20w25pf(:,3),Markerfacecolor='black')


ylabel('Nu')
xlabel('Electrical power P_e_l [W]')
