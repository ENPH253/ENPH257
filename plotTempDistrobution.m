function [ ] = plotTempDistrobution( temps, row )

x = [299 228 152 76 5];

plot(x,temps(row,1:5), 'ro'); hold on
xlabel('Distance along rod (mm)');
ylabel('Temperature (C)');
hold off

end