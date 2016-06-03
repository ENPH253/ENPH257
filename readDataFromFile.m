filename = input('Filename:');

M = csvread(filename);

times = M(:,1);
temps = M(:,2:end);

clear filename M;