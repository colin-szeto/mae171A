clear; close all; clc

figure(1)


ssf_test1 = importdata('steady_state_free.txt');
ssf_test1_v = ssf_test1.data(:,5); % voltage
ssf_test1_dt = ssf_test1.data(:,end); % deltaT	
ssf_test1_Nu = ssf_test1.data(:,2); % Nu	

plot([0 mean(ssf_test1_v)] ,[0 mean(ssf_test1_dt)])
title('delta over wattage test 1')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')

% skipping page 74 as all of our temp differences are the same

figure(2)

ssf_test1 = importdata('test_2_steady_state.txt');
sst2_v = ssf_test1.data(:,5); % voltage
sst2_dt = ssf_test1.data(:,11); % deltaT	
sst2_Nu = ssf_test1.data(:,2); % Nu	

ssf_test1 = importdata('test2_5W.txt');
test25w_v = ssf_test1.data(1:10,5); % voltage
test25w_dt = ssf_test1.data(1:10,11); % deltaT	
test25w_Nu = ssf_test1.data(1:10,2); % Nu	




plot([0 mean(ssf_test1_v)] ,[0 mean(ssf_test1_dt)]) % test 1
hold on

plot([0 mean(test25w_v) mean(sst2_v)],[0 mean(test25w_dt) mean(sst2_dt)]) % test 2



test3_5w = importdata('test3_5w.txt');
test3_5w_v = test3_5w.data(:,5); % voltage
test3_5w_dt = test3_5w.data(:,11); % deltaT	
test3_5w_Nu = test3_5w.data(:,2); % Nu

test3_20 = importdata('test3_with_20W_25perect_fan.txt');
test3_20w_v = test3_20.data(:,5); % voltage
test3_20w_dt = test3_20.data(:,11); % deltaT	
test3_20w_Nu = test3_20.data(:,2); % Nu





plot([0 mean(test3_5w_v) mean(test3_20w_v)],[0 mean(test3_5w_dt) mean(test3_20w_dt)])
%legend({'test1 free convection' 'test 2 forec laminar' 'test 3 forced terbulant'},Location='best')


%plot([mean(test425pf(:,1)) mean(test450pf(:,1))],[mean(test425pf(:,2)) mean(test450pf(:,2))])

legend({'test1 free convection' 'test 2 forec laminar' 'test 3 forced terbulant'},Location='best')
title('delta over wattage test 2')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')

scatter(test25w_v,test25w_dt,color='black',Markerfacecolor='red')
scatter(sst2_v,sst2_dt,color='red',Markerfacecolor='red')


scatter(test3_5w_v,test3_5w_dt,Markerfacecolor='blue')
scatter(test3_20w_v,test3_20w_dt,Markerfacecolor='blue')

%scatter(test425pf(:,1),test425pf(:,2),Markerfacecolor='green')
%scatter(test450pf(:,1),test450pf(:,2),Markerfacecolor='green')

hold off

figure(3)

scatter(test25w_v,test25w_Nu,color='black',Markerfacecolor='red')
hold on
scatter(sst2_v,sst2_Nu,color='red',Markerfacecolor='green')
%plot([0 mean(test25w_v) mean(sst2_v)],[0 mean(test25w_dt) mean(sst2_dt)]) % test 2


scatter(test3_5w_v,test3_5w_Nu,Markerfacecolor='blue')
%plot([0 mean(test3_5w_v) mean(test3_20w_v)],[0 mean(test3_5w_dt) mean(test3_20w_dt)])

scatter(test3_20w_v,test3_20w_Nu,Markerfacecolor='black')

legend({'test2 5w' 'ss test2' 'test 3 5w' 'test3 20w'},Location='best')



ylabel('Nu')
xlabel('Electrical power P_e_l [W]')
%

%%


test4_25p = importdata('test4_25percent.txt');
test4_25p_re = test4_25p.data(:,1); % Re
test4_25p_v = test4_25p.data(:,5); % voltage
test4_25p_dt = test4_25p.data(:,11); % deltaT	
test4_25p_Nu = test4_25p.data(:,2); % Nu

test4_40p = importdata('test4_50percent.txt');
test4_40p_re = test4_40p.data(:,1); % Re
test4_40p_v = test4_40p.data(:,5); % voltage
test4_40p_dt = test4_40p.data(:,11); % deltaT	
test4_40p_Nu = test4_40p.data(:,2); % Nu

figure(4)
scatter(test4_25p_re,test4_25p_Nu,MarkerFaceColor="blue")
hold on
scatter(test4_40p_re,test4_40p_Nu,MarkerFaceColor="green")
plot([mean(test4_25p_re) mean(test4_40p_re)],[mean(test4_25p_Nu) mean(test4_40p_Nu)])

ylabel('Nu')
xlabel('Re')
