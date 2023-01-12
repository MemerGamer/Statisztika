function ertek = sajatMedian(Data)
    n = size(Data,1);
    S = sort(Data);
    if mod(n, 2) == 0
        ertek = mean(S(n/2),S((n/2)+1));
    else
        ertek = S((n+1)/2);
    end

end