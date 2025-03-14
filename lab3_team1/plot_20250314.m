clear; close all; clc

ssf = [10.0,  47.5;
10.0, 47.5;
10.0, 47.5;
10.0, 47.5;
10.2, 47.5;
10.0, 47.5;
10.0, 47.5;
10.0, 47.5;
10.0, 47.5;
10.2, 47.5;
10.0, 47.5;];


sst2 = [19.8, 34.9;
20.1, 34.9;
20.3, 34.9;
19.8, 34.9;
20.3, 34.9;
20.3, 34.9;
19.8, 34.9;
20.3, 34.9;
20.2, 34.9;
19.8, 34.8;
19.8, 34.9;];





test25w = [5.1	,11.2;
5.1	,11.1;
5.1	,11.1;
5.1	,11.2;
5.0	,11.2;
5.1	,11.1;
5.0	,11.2;
5.0	,11.2;
5.1	,11.1;
4.9	,11.2;];
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

plot([mean(test25w(:,1)) mean(sst2(:,1))],[mean(test25w(:,2)) mean(sst2(:,2))])
hold on


test3_5w = [4.9,7.3;
4.9,7.3;
4.9,7.3;
5.1,7.2;
4.9,7.3;
4.9,7.3;
4.9,7.2;
5.1,7.3;
5.1,7.2;
5.1,7.3;];


test3_20w25pf = [20.2,33.7;
19.8,33.7;
19.8,33.7;
19.8,33.6;
19.8,33.7;
20.2,33.7;
19.8,33.7;
19.9,33.7;
20.2,33.7;
19.8,33.7;
19.9,33.6;];

plot([mean(test3_5w(:,1)) mean(test3_20w25pf(:,1))],[mean(test3_5w(:,2)) mean(test3_20w25pf(:,2))])


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
legend({'test 2' 'test 3' 'test 4'},Location='best')
title('delta over wattage test 2')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')

scatter(test25w(:,1),test25w(:,2),color='black',Markerfacecolor='red')
scatter(sst2(:,1),sst2(:,2),color='red',Markerfacecolor='red')


scatter(test3_5w(:,1),test3_5w(:,2),Markerfacecolor='blue')
scatter(test3_20w25pf(:,1),test3_20w25pf(:,2),Markerfacecolor='blue')

%scatter(test425pf(:,1),test425pf(:,2),Markerfacecolor='green')
%scatter(test450pf(:,1),test450pf(:,2),Markerfacecolor='green')
