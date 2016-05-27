function [ offsets ] = sensorOffsets(a)

temps = readTemperatures(a);

averageTemp = mean(temps);

offsets = temps - averageTemp;
% Offsets should be subtracted from temperature readings

end

