function eq=equliazer(rx_wave)
k=1;
a=0;
eq=zeros(1,length(rx_wave));
for j=1:length(rx_wave)-1
        eq(j+1)=1/(k*(1-a))*(rx_wave(j+1)-a*rx_wave(j));
end
% eq = eq(2:end);
end