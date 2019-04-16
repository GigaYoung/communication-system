function result=deframe(frame)
singleLeng = 8;

counterAll = (length(frame)-3)/(singleLeng+2);

t=5 ;
a=1 ;
counter = 0;
while counter < counterAll
    for i=t:t+(singleLeng-1)
        result(a)=frame(i);
        a=a+1 ;
    end
    t=t+singleLeng+2;
    counter = counter + 1;
end
end