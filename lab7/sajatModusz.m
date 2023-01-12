function ertek=sajatModusz(Data)

    SData = sort(Data);
    n = size(Data,1);

    countVar = 1;
    maxi = 1;

    index = 1;
    for i = 1:n-1
        if SData(i) == SData(i+1)
            countVar = countVar + 1;
        else
            if countVar > maxi
                maxi = countVar;
            end
            countVar = 1;
        end
    end

    index = 1;

    for i = 1:n-1
        if SData(i) == SData(i+1)
            countVar = countVar + 1;
        else
            if countVar == maxi
                ertek(index) = SData(i);
                index = index + 1;
            end
            countVar = 1;
        end
    end
end

% hf
% minta terjedelem, interkvartilis terjedelem, szoras
% korrigalt szoras