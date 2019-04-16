function bs=channel(waveform)
k=1;
a=0;
bs=zeros(1,length(waveform)+1);
for j=1:length(waveform)
        bs(1,j+1)=a*bs(1,j)+(1-a)*k*(waveform(1,j));
end
bs = bs(2:end);
end