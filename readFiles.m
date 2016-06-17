MVS = csvread('Noober0606vs.csv');

timesVS = MVS(:,1);
tempsVS = MVS(:,2:end);

MHS = csvread('Noober0609hs.csv');

timesHS = MHS(:,1);
tempsHS = MHS(:,2:end);

MHB = csvread('Noober0610hb.csv');

timesHB = MHB(:,1);
tempsHB = MHB(:,2:end);

MVB = csvread('Noober0613vb.csv');

timesVB = MVB(:,1);
tempsVB = MVB(:,2:end);

clear filename MVS MVB MHS MHB;