function wave = bitseq2waveform(tx_bs2, SPB)
%turn the bit sequence into a wave,output is list
wave = [];
for i = 1:length(tx_bs2)
    for j = 1:SPB
        wave = [wave str2double(tx_bs2(i))];
    end
end
end

