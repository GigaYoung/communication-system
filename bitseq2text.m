function tx_msg = bitseq2text(rx_bs)
    % number = floor(length(rx_bs)/8);
    number = length(rx_bs)/8;
    tx_msg =[];
    % for i = 0:number-1
    %     temp = rx_bs(1+8*i:(i+1)*8);
    %     string = char(bin2dec(temp));
    %     tx_msg= [tx_msg string];
    % end

    for i = 1:number
        tx_msg = [tx_msg bin2dec(rx_bs(1+8*(i-1):8*i))];
        tx_msg = char(tx_msg);
    end
end
