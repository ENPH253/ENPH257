%% ENPH 257 Lab 

%% Arduino setup
% sensor pin 0 (no 1) is at free end
% sensor pin 1,2,3 (no 2,3,4) is between ends
% sensor pin 4 (no 5) is at heated end
% sensor pin 5 (no 6) is ambient 

powerTemp = 5;
powerPin = 'D8'; pOn = 1; pOff = 0;
maxTemp = 70; % C, when reached, power resistor turns off
delayTime = 0.5; % Time delay between itterations of loop

clear a;
a = arduino();

%% Time setup
duration = 20000; % seconds
heatingDuration = 9000; % seconds
tic; times = toc; % start time

%% Start apparatus setup

temps=readTemperatures(a); % initial temperature reading for initialization of array
writeDigitalPin(a,powerPin,pOn); %turn power resistor on

while toc < duration
    
    times = vertcat(times, toc);
    temps = vertcat(temps, readTemperatures(a)); 
    
    if toc < heatingDuration 
        % Turn resistor off at maxTemp
        if temps(end,powerTemp) > maxTemp
            writeDigitalPin(a,powerPin,pOff);
        else
            writeDigitalPin(a,powerPin,pOn);
        end
    else 
        writeDigitalPin(a,powerPin,pOff);
    end
    
    plotData(times, temps);
  
    pause(delayTime); 
end

writeDigitalPin(a,powerPin,pOff); %turn power resistor off, safety measure
saveFile;