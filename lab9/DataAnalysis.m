function E = DataAnalysis(FileID,HistYN=0,k=0)
    pkg load statistics;
    Data = importdata(FileID);

    SData=sort(Data);
    n=size(Data,1);

    avg = mean(Data)
    smedian = median(Data)
    smdsz = mode(SData)

    Q = sQvart(SData)

    interkvart=(Q(3)-Q(1))/2

    szoras=std(SData)
    % az alapertelmezett a korrigalt
    % az 1 a nem alapertelmezett a matematikai alapertelmezett
    szoras2=std(SData,1)

    if HistYN == 1
        [count, bin] = hist(SData,5);
        bar(bin,count/n);

        % histfit (SData, avg, szoras2)

        mini=min(SData);
        maxi=max(SData);

        xr=mini:0.1:maxi;

        yr=normpdf(xr,avg,szoras2);

        % hist(SData,5,1);

        % histfit (SData)

        for jj=1:k
            % plot(xr,yr,"linewidth", 5, 'r');
            % hold on;
            hist(SData,jj,1);
            pause(0.01)
            % hold off;
            % F(k) = getframe(gca);
            % F(jj) = getframe(gca);
        end
        % fig = figure;
        % movie(fig, F, 1);
    end
endfunction