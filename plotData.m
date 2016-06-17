function [ ] = plotData( times, temps )
    
    %%
    plot(times,temps(:,1),'r-'); hold on
    plot(times,temps(:,2),'b-'); 
    plot(times,temps(:,3),'g-'); 
    plot(times,temps(:,4),'k-'); 
    plot(times,temps(:,5),'m-'); 
    plot(times,temps(:,6),'c-'); 
    xlabel('time (s)'); ylabel('temperature (C)'); hold off
     
end