function [ temperatures ] = readTemperatures(a)

voltages = [readVoltage(a,'A0'), readVoltage(a,'A1'), readVoltage(a,'A2'), readVoltage(a,'A3'), readVoltage(a,'A4'), readVoltage(a,'A5')];
temperatures = voltages*100;

end

