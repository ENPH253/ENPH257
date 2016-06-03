function [times, temps] = readDataFromFile( filename )

M = csvread(filename);

times = M(:,1);
temps = M(:,2:end);

end