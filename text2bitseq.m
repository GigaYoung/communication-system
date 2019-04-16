
function tx_bs = text2bitseq(tx_msg)
% for c=1:length(tx_msg)
%     character=tx_msg(c);
% end

tx_ascii = abs(tx_msg);
bitstr = dec2bin(tx_ascii,8);

length = size(bitstr);
length = length(1);

tx_bs = [];
for i = 1:length
    tx_bs = [tx_bs bitstr(i,:)];
end


end
