% PARAMETERS - Belongs to MAELAB.M for MAE171a
% MatLab template file for specifying 2DOF model parameters

% Written by R.A. de Callafon, Dept. of MAE, UCSD (2001-2021)
% Report errors in this software to <callafon@ucsd.edu>

%{
%m1=  3.2539e-07;         % Mass m1    
m1=  1*1.8*3.2539e-07;         % Mass m1                     

d1=   1.35*1.7831e-06;         % Damping that connects m1 to ground  
k1=   1.85*1.7539e-04;         % Spring that connect m1 to ground

%m2=  6.7591e-07;         % Mass m2                
m2=  1*0.75*6.7591e-07;         % Mass m2                     

d2=  1.6*1.4510e-06;         % Damping that connects m2 to ground 
k2=  1.9*1.6325e-04;      % Spring that connects m1 and m2      

%}

m1_var = 1.5
m2_var = .8
d1_var = 1.3
d2_var = 1.8
k1_var = .99
k2_var =  .8

m1=  m1_var* 3.2539e-07;         % Mass m1                     
d1=  d1_var* 1.7831e-06;         % Damping that connects m1 to ground  
k1=  k1_var* 1.7539e-04;         % Spring that connect m1 to ground
m2=  m2_var* 6.7591e-07;         % Mass m2                     
d2=  d2_var* 1.4510e-06;         % Damping that connects m2 to ground 
k2=  k2_var* 1.6325e-04;      % Spring that connects m1 and m2      
