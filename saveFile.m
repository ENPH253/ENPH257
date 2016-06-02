
%% Save to file
ts = datetime('now');
DateString = datestr(ts,30);
filename = ['Noober' DateString '.csv'];
csvwrite(filename,[times temps]);

'Saved'
