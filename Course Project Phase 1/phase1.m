clear all; clc; close all;
s=tf('s');
t=0:0.01:5;
%define function
%open loop
G=(19.8617)/(2070.8939*s^2+224.2254*s+1)
%closed loop
T=feedback(G,1);
%obtain damping
damp(T)
%obtain overshoot, undershoot, tr, ts, peak, etc
stepinfo(T)
%obtain ess 
%e=1/s*s*1/1+openloopgain 
%ess=lim(e)as s->zero
%knowing that the open loop gain is G
E=1/(1+G);
ess=dcgain(E);
ess
%plot step response
step(T)

%ess_step2 = 1/(1+dcgain(G2))
%ess_ramp2 = 1/dcgain(s*G2)
%ess_para2 = 1/dcgain((s^2)*G2)

figure %initialize figure
t = 0:0.01:5; %small time for plot
plot(step(T, t)); %step
hold on
plot(step(T/s, t));
hold on
plot(step(T/s^2, t));
hold on
%title('Step Response base')
title('Response Comparison')
legend('Step','Ramp','Parabolic')
xlabel('Time')
ylabel('Amplitude')