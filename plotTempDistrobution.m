function [ ] = plotTempDistrobution( temps, row )

x = [5 76 152 288 299];

plot(x,temps(row,1:5)); hold on
xlabel('Distance along rod (mm)');
ylabel('Temperature (C)');
hold off

end

