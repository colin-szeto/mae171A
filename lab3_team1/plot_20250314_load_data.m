clear; close all; clc

figure(1)


ssf_test1 = importdata('steady_state_free.txt');
ssf_test1_v = ssf_test1.data(:,5); % voltage
ssf_test1_dt = ssf_test1.data(:,end); % deltaT	
ssf_test1_Nu = ssf_test1.data(:,2); % Nu	

plot([0 mean(ssf_test1_v)] ,[0 mean(ssf_test1_dt)],LineWidth=2)
title('delta over wattage test 1')
grid on
title('Calibration Slope')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')

% skipping page 74 as all of our temp differences are the same


ssf_test1 = importdata('test_2_steady_state.txt');
sst2_v = ssf_test1.data(:,5); % voltage
sst2_dt = ssf_test1.data(:,11); % deltaT	
sst2_Nu = ssf_test1.data(:,2); % Nu	

ssf_test1 = importdata('test2_5W.txt');
test25w_v = ssf_test1.data(1:10,5); % voltage
test25w_dt = ssf_test1.data(1:10,11); % deltaT	
test25w_Nu = ssf_test1.data(1:10,2); % Nu	



test3_5w = importdata('nofin_test3_5W.txt');
test3_5w_v = test3_5w.data(:,5); % voltage
test3_5w_dt = test3_5w.data(:,11); % deltaT	
test3_5w_Nu = test3_5w.data(:,2); % Nu

test3_20 = importdata('no_fin_test3_20W.txt');
test3_20w_v = test3_20.data(:,5); % voltage
test3_20w_dt = test3_20.data(:,11); % deltaT	
test3_20w_Nu = test3_20.data(:,2); % Nu


test3_5w_og = importdata('test3_5w.txt');
test3_5w_v_og = test3_5w_og.data(:,5); % voltage
test3_5w_dt_og = test3_5w_og.data(:,11); % deltaT	
test3_5w_Nu_og = test3_5w_og.data(:,2); % Nu

test3_20_og = importdata('test3_with_20W_25perect_fan.txt');
test3_20w_v_og = test3_20_og.data(:,5); % voltage
test3_20w_dt_og = test3_20_og.data(:,11); % deltaT	
test3_20w_Nu_og = test3_20_og.data(:,2); % Nu




figure(2)
plot([0 mean(ssf_test1_v)] ,[0 mean(ssf_test1_dt)],LineWidth=2) % test 1
hold on
plot([mean(test25w_v) mean(sst2_v)],[mean(test25w_dt) mean(sst2_dt)],LineWidth=2) % test 2
plot([mean(test3_5w_v) mean(test3_20w_v)],[mean(test3_5w_dt) mean(test3_20w_dt)],LineWidth=2)
%scatter(test25w_v,test25w_dt,color='black',Markerfacecolor='red')
errorbar(mean(test25w_v),mean(test25w_dt),std(test25w_v),'horizontal',color='red',LineWidth=2)
errorbar(mean(sst2_v),mean(sst2_dt),std(sst2_v),'horizontal',color='red',LineWidth=2)

%scatter(sst2_v,sst2_dt,color='red',Markerfacecolor='red')
%scatter(test3_5w_v,test3_5w_dt,Markerfacecolor='blue')
%scatter(test3_20w_v,test3_20w_dt,Markerfacecolor='blue')

errorbar(mean(test3_5w_v),mean(test3_5w_dt),std(test3_5w_v),'horizontal',color='blue',LineWidth=2)
errorbar(mean(test3_20w_v),mean(test3_20w_dt),std(test3_20w_v),'horizontal',color='blue',LineWidth=2)


legend({'test1 free convection' 'test 2 forced laminar' 'test 3 forced terbulant'},Location='best')
title('delta over wattage test 2')

title('Test 1, Test 2, and Test 3, Compare Slopes')

ylabel('Temperature Difference [\DeltaT]')
xlabel('Electrical power P_e_l [W]')
grid on
hold off

figure(3)

%scatter(test25w_v,test25w_Nu,color='black',Markerfacecolor='red')
errorbar(mean(test25w_v),mean(test25w_Nu),std(test25w_Nu),'vertical',color='black',LineWidth=2)
hold on
%scatter(sst2_v,sst2_Nu,color='red',Markerfacecolor='green')
errorbar(mean(sst2_v),mean(sst2_Nu),std(sst2_Nu),'vertical',color='black',LineWidth=2)
plot([ mean(sst2_v) mean(test25w_v)],[ mean(sst2_Nu) mean(test25w_Nu)],color='black',LineWidth=2)

%plot([0 mean(test25w_v) mean(sst2_v)],[0 mean(test25w_dt) mean(sst2_dt)]) % test 2


%scatter(test3_5w_v,test3_5w_Nu,Markerfacecolor='blue')
errorbar(mean(test3_5w_v),mean(test3_5w_Nu),std(test3_5w_Nu),'vertical',color='red',LineWidth=2)
%plot([0 mean(test3_5w_v) mean(test3_20w_v)],[0 mean(test3_5w_dt) mean(test3_20w_dt)])

%scatter(test3_20w_v,test3_20w_Nu,Markerfacecolor='black')
errorbar(mean(test3_20w_v),mean(test3_20w_Nu),std(test3_20w_Nu),'vertical',color='red',LineWidth=2)
plot([mean(test3_5w_v) mean(test3_20w_v)],[mean(test3_5w_Nu) mean(test3_20w_Nu)],color='red',LineWidth=2)


errorbar(mean(test3_5w_v_og),mean(test3_5w_Nu_og),std(test3_5w_Nu_og),'vertical',color='blue',LineWidth=2)
errorbar(mean(test3_20w_v_og),mean(test3_20w_Nu_og),std(test3_20w_Nu_og),'vertical',color='blue',LineWidth=2)
plot([mean(test3_5w_v_og) mean(test3_20w_v_og)],[mean(test3_5w_Nu_og) mean(test3_20w_Nu_og)],color='blue',LineWidth=2)

legend({'' '' 'test 2 5W to 20W' '' '' 'test 3 5W to 20W' '' '' 'test3 og'},Location='SouthEast')

title('Test 2 and Test 3')

grid on
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
%scatter(test4_25p_re,test4_25p_Nu,MarkerFaceColor="blue")
errorbar(mean(test4_25p_re), mean(test4_25p_Nu),std(test4_25p_re),'horizontal',linewidth=2,color='black')
hold on
%scatter(test4_40p_re,test4_40p_Nu,MarkerFaceColor="green")
errorbar(mean(test4_40p_re), mean(test4_40p_Nu),std(test4_40p_re),'horizontal',linewidth=2,color='black')

plot([mean(test4_25p_re) mean(test4_40p_re)],[mean(test4_25p_Nu) mean(test4_40p_Nu)],linewidth=2,color='black')
title('Test 4')
grid on 
ylabel('Nu')
xlabel('Re')
