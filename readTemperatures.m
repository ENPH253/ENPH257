function [ temperatures ] = readTemperatures(a)

offset = 0.4888/100;

voltages = [readVoltage(a,'A0')+offset, readVoltage(a,'A1')-offset, readVoltage(a,'A2')+offset, readVoltage(a,'A3'), readVoltage(a,'A4'), readVoltage(a,'A5')];
temperatures = voltages*100;

end

