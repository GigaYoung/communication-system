function rx_bs2=deparcoding(rx_bs)
rx_bs2='';
ch=zeros(10,4);
for k=1:length(rx_bs)/8
    if xor(xor(rx_bs(8*k-7)-'0',rx_bs(8*k-6)-'0'),rx_bs(8*k-3)-'0')...
            ==0
        c1=1;
    else
        c1=0;
    end
    if xor(xor(rx_bs(8*k-5)-'0',rx_bs(8*k-4)-'0'),rx_bs(8*k-2)-'0')...
            ==0
        c2=1;
    else
        c2=0;
    end
    if xor(xor(rx_bs(8*k-7)-'0',rx_bs(8*k-5)-'0'),rx_bs(8*k-1)-'0')...
            ==0
        c3=1;
    else
        c3=0;
    end
    if xor(xor(rx_bs(8*k-6)-'0',rx_bs(8*k-4)-'0'),rx_bs(8*k)-'0')...
            ==0
        c4=1;
    else
        c4=0;
    end
    if   c1==0&&c3==0&&c2==1&&c4==1
         rx_bs(8*k-7)=char(not(rx_bs(8*k-7)-'0')+'0');
    end
    if   c1==0&&c4==0&&c2==1&&c3==1
        rx_bs(8*k-6)=char(not(rx_bs(8*k-6)-'0')+'0');
    end
    if   c2==0&&c3==0&&c1==1&&c4==1
         rx_bs(8*k-5)=char(not(rx_bs(8*k-5)-'0')+'0');
    end
    if   c1==1&&c3==1&&c2==0&&c4==0
         rx_bs(8*k-4)=char(not(rx_bs(8*k-4)-'0')+'0');
    end
    rx_bs1=strcat('',rx_bs(8*k-7:8*k-4));
     ch(k,:)=rx_bs1;
    
end
for  k=1:length(rx_bs)/8
     rx_bs2=strcat(rx_bs2,ch(k,:)) ;
end
end