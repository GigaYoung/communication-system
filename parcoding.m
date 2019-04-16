function tx_bs2=parcoding(tx_bs)
tx_bs2='';
ch=zeros(20,8);
for k=1:length(tx_bs)/4
    if  char(bitxor(tx_bs(4*k-3)-'0',tx_bs(4*k-2)-'0')+'0')=='0'
    tx_bs2=strcat(tx_bs(4*k-3:4*k),'0');
    else 
    tx_bs2=strcat(tx_bs(4*k-3:4*k),'1');
    end
    if  char(bitxor(tx_bs(4*k-1)-'0',tx_bs(4*k)-'0')+'0')=='0'
    tx_bs2=strcat(tx_bs2,'0');
    else 
    tx_bs2=strcat(tx_bs2,'1');  
    end
    if char(bitxor(tx_bs(4*k-3)-'0',tx_bs(4*k-1)-'0')+'0')=='0'
    tx_bs2=strcat(tx_bs2,'0');
    else 
    tx_bs2=strcat(tx_bs2,'1');  
    end
     if  char(bitxor(tx_bs(4*k-2)-'0',tx_bs(4*k)-'0')+'0')=='0'
    tx_bs2=strcat(tx_bs2,'0');
    else 
    tx_bs2=strcat(tx_bs2,'1');    
     end
    ch(k,:)=tx_bs2;
end
tx_bs2='';
for  k=1:length(tx_bs)/4
     tx_bs2=strcat(tx_bs2,ch(k,:)) ;
end
end
