clear

SPB = 4;
tx_msg = 'group work of eic';
tx_bs = text2bitseq(tx_msg);
tx_bs2 = parcoding(tx_bs);

frame=framing(tx_bs2);

waveform = bitseq2waveform(frame,SPB);
rx_wave=channel(waveform) ;
rx_wave_g=Gaussian(rx_wave);
eq=equliazer(rx_wave_g);

% here we goes the eye map
eyemap(eq);

threshold=@(eq) ((eq(6)+eq(4))/2);
ts=threshold(eq);


rx_bs = waveform2bitseq(rx_wave,SPB,ts);

rx_bs=deframe(rx_bs);
rx_bs = deparcoding(rx_bs);

rx_msg = bitseq2text(rx_bs);

bre = BRE(rx_bs, tx_bs);
pe0 = pe(tx_bs, rx_bs);