function frame=framing(msg)
frame='010' ;
t=1 ;
singleLeng = 8;
counterAll = length(msg) / singleLeng;
counter  = 0;

% add 1 and 0 to begin and end of 16 bits
while counter < counterAll
    frame=strcat(frame,'1');
    frame = [frame msg(t:t+singleLeng-1)];
    frame=strcat(frame,'0') ;
    t=t+singleLeng;
    counter = counter + 1;
end
end
