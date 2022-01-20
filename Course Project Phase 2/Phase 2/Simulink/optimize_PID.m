function cost = optimize_PID(k)
    ITAE = load('ITAE.mat');
    assignin('base','k',k);
    sim('Tuning_PID.slx');
    cost =ITAE(length(ITAE)); 
    %ITAE = load('ITAE.mat');
    %num_samples = size(ITAE.ans , 2);
    %ITAE_value = ITAE.ans(2, num_samples);
    %cost = ITAE_values(num_samples);

end