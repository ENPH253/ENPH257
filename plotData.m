function [ ] = plotData( times, temps )
    
    subplot(1,2,1);
    plot(times,temps(:,1),'r-'); hold on
    plot(times,temps(:,2),'b-'); 
    plot(times,temps(:,3),'g-'); 
    plot(times,temps(:,4),'k-'); 
    plot(times,temps(:,5),'m-'); 
    plot(times,temps(:,6),'c-'); 
    xlabel('time (s)'); ylabel('temperature (C)');
    
    x = [1 2 3 4 5];
    temp = temps(end, :);
    subplot(1,2,2);
    cs = spline(x,y);
    xx = linspace(1, 5 ,100);
    
    plot(xx, ppval(cs,xx));
    
    hold off

end