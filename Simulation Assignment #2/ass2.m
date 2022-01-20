%Assignment 2 Rami Wail Shoula
%% phase A - Initialize
clc
close all 
clear
s=tf('s'); % initialize Transfer Function TF in s domain

%% phase B - Eqn 1
TF=5*(s+3)/(7*s^2+56*s+252);
Gain=TF/(1-TF); %closed loop gain
Gain=minreal(Gain);
ess_step = 1/(1+dcgain(Gain))   %steady-state error step
ess_ramp = 1/dcgain(s*Gain)     %steady-state error ramp
ess_para = 1/dcgain((s^2)*Gain) %steady-state error parabolic


figure %initialize figure
t = 0:0.01:5; %small time for plot
plot(step(Gain, t)); %step
hold on
plot(step(Gain/s, t)); %ramp
hold on
plot(step(Gain/s^2, t)); %parabolic
title('Assignment# 2:Time Response Comparison')
legend('Step','Ramp','Parabolic')
xlabel('Time')
ylabel('Amplitude')

stepinfo(Gain)
damp(Gain)


%% phase C - Eqn 2
TF2=5*(s+3)/((s+7)*(s^2+8*s+36));
G2=TF2/(1-TF2);
G2=minreal(G2);
ess_step2 = 1/(1+dcgain(G2))
ess_ramp2 = 1/dcgain(s*G2)
ess_para2 = 1/dcgain((s^2)*G2)

figure 
t = 0:0.01:5;
plot(step(G2, t));
hold on
plot(step(G2/s, t));
hold on
plot(step(G2/s^2, t));
title('Assignment# 2:Time Response Comparison')
legend('Step','Ramp','Parabolic')
xlabel('Time')
ylabel('Amplitude')

stepinfo(G2)
damp(G2)






