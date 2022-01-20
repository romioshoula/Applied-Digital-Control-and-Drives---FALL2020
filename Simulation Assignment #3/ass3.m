%Assignment 3 Rami Wail Shoula
%% phase A - Initialize
clc
close all 
clear
s=tf('s'); % initialize Transfer Function TF in s domain

%% phase B - Function Definition
TF=(s^2+3*s+2.6)/(s^3+ 5.6*s^2+4.9*s+5);
Gain=TF/(1-TF); %closed loop gain
Gain=minreal(Gain);
ess_step = 1/(1+dcgain(Gain))   %steady-state error step

T=feedback(Gain,1);
%obtain damping
damp(T)
%obtain overshoot, undershoot, tr, ts, peak, etc
stepinfo(T)






