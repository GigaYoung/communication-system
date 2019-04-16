function eyemap(wave)

% do some basic things
singleFrame = 8;
counterAll = floor(length(wave) / singleFrame);
i = 0;
while i < counterAll
    hold on
    x=(i*8+1):(i*8+8);
    plot(1:8,wave(x))
    axis([1 8 0 1.5])
    i = i+1;
end
end