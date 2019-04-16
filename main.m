clear

SPB =4;
tx_msg = 'hust'
tx_bs = text2bitseq(tx_msg); 
tx_bs2=parcoding(tx_bs);
frame=framing(tx_bs2) ;
waveform = bitseq2waveform(frame, SPB);
rx_wave=channel(waveform) ;
rx_wave_g=Gaussian(rx_wave);
eq=equliazer(rx_wave_g) ;
histogram(eq,100) ;
%   for i=1:8
%   hold on
%   x=(i*8+1):(i*8+8);
%   plot(1:8,eq(x))
%   axis([1 8 0 1.5])
  %end
threshold=@(eq) ((eq(6)+eq(4))/2);
ts=threshold(eq);
rx_bs = waveform2bitseq(eq, SPB, ts); 
for i=1:length(rx_bs)-1
    rx_bs(i)=rx_bs(i+1);

end 
rx_bs=deframe(rx_bs);
rx_bs2=deparcoding(rx_bs);
rxtext = bitseq2text(rx_bs2); 
pe0=pe(tx_bs,rx_bs2);
BER = BRE(rx_bs2,tx_bs); 
