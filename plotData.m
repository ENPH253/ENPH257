function [ ] = plotData( times, temps )
    
    %%
    subplot(1,2,1);
    plot(times,temps(:,1),'r-'); hold on
    plot(times,temps(:,2),'b-'); 
    plot(times,temps(:,3),'g-'); 
    plot(times,temps(:,4),'k-'); 
    plot(times,temps(:,5),'m-'); 
    plot(times,temps(:,6),'c-'); 
    xlabel('time (s)'); ylabel('temperature (C)'); hold off
    
    %% 
    subplot(1,2,2);

    x = [0.299 0.228 0.152 0.076 0.005];
    xx = linspace(x(1), x(end) ,100);

    subTemps = temps(end, 1:5);
    
    cs = spline(x,subTemps);
    
    plot(xx, ppval(cs,xx)); hold on
    plot(x,subTemps, 'ro');
    xlabel('Distance along rod (mm)');
    ylabel('Temperature (C)');
    hold off

hold off
    
end