function pe0=pe(b1,b2)
er=0 ;
for i=1:length(b1)
    if b1(i)=='0' && b2(i)=='1'
        er=er+1 ;
    end
end
pe0=er/length(b1) ;