load('test3_holding_m1_econder1_hold_07-Feb-2025 09_35_19.mat')


plot(time,target_v,'--'); hold on
plot(time,duty)
plot(time,enc1)

legend('target_v', 'duty', 'enc1')

grid on 
box on