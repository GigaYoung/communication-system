function BER = BRE(b1,b2)
er=0 ;

% just a count to the error
for i=1:length(b1)
    if b1(i)~=b2(i)
        er=er+1 ;
    end
end
BER=er/length(b1) ;

end
