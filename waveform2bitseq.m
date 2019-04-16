% function rx_bs = waveform2bitseq(wave,SPB,ts)
% bit = ' ';
% for i = 1:length(wave)
%     n=wave(i)-ts;
%     if n>0
%         bit = strcat(bit,'1');
%     else
%         bit = strcat(bit,'0');
%     end
% end
% rx_bs = bit(1:SPB:end);
% end

function rx_bs = waveform2bitseq(wave,SPB,ts)
    bit = ' ';
    for i = 1:length(wave)
        n=wave(i)-ts;
        if n>0
            bit = strcat(bit,'1');
        else
            bit = strcat(bit,'0');
        end
    end
    rx_bs = bit(1:SPB:end);
    end