% Plots for timeseries results

subplot(2,3,1)
plot(history.t,history.p(1,:),'k',history.t,history.v(1,:),'b')
legend('Coordinate','Velocity')
xlim([0,sim.T])
xlabel('s')
ylabel('meters')
title x
grid on

subplot(2,3,2)
plot(history.t,history.p(2,:),'k',history.t,history.v(2,:),'b')
xlim([0,sim.T])
xlabel('s')
ylabel('meters')
title y
grid on

subplot(2,3,3)
plot(history.t,history.p(3,:),'k',history.t,history.v(3,:),'b')
xlim([0,sim.T])
xlabel('s')
ylabel('meters')
title z
grid on

subplot(2,3,4)
plot(history.t,history.th(1,:).*(180/pi),'k',history.t,history.w(3,:).*(180/pi),'b')
xlim([0,sim.T])
xlabel('s')
ylabel('deg')
title yaw
grid on

subplot(2,3,5)
plot(history.t,history.th(2,:).*(180/pi),'k',history.t,history.w(2,:).*(180/pi),'b')
xlim([0,sim.T])
xlabel('s')
ylabel('deg')
title pitch
grid on

subplot(2,3,6)
plot(history.t,history.th(3,:).*(180/pi),'k',history.t,history.w(1,:).*(180/pi),'b')
xlim([0,sim.T])
xlabel('s')
ylabel('deg')
title roll
grid on

if(sim.plotOutputs == true)
    figure
    
    subplot(3,1,1)
    plot(history.t,history.output(1,:),'k')
    xlabel('s')
    xlim([0,sim.T])
    title('output1')
    grid on
    
    subplot(3,1,2)
    plot(history.t,history.output(2,:),'k')
    xlabel('s')
    xlim([0,sim.T])
    title('output2')
    grid on
    
    subplot(3,1,3)
    plot(history.t,history.output(3,:),'k')
    xlabel('s')
    xlim([0,sim.T])
    title('output3')
    grid on
end
    
    