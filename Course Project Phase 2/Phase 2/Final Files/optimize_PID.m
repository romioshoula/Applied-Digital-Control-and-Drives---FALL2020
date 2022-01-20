function cost = optimize_PID(k)
    %optimize code that simulates simulink block and retreives last ITAE value 
    assignin('base','k',k); %takes k parameters from command window
    sim('Tuning_PID.slx');  %simulates simulink block
    cost=last;              %last element retrieved from simulnk of ITAE

end