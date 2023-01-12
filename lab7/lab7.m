clear all;
% pkg install -forge io
pkg load statistics;
% fin = fopen("Magassagok.txt");



% while ~feof(fin)
%     thisline = fgetl(fin);
%     disp(thisline);
% end

% fclose(fin);

%1
Data = importdata("Magassagok.txt");
%2
n = size(Data,1)
%3
%a
avg = mean(Data)

%b
SData=sort(Data);
sajmedian = sajatMedian(Data)
bepitettmedian = median(SData)

%c
beepitettModusz = mode(SData)
sajatmdsz = sajatModusz(SData)

% 8.labor
Q = sajatQvart(SData)

interkvart=(Q(3)-Q(1))/2

szoras=std(SData)
% az alapertelmezett a korrigalt
% az 1 a nem alapertelmezett a matematikai alapertelmezett
szoras2=std(SData,1)

%hisztogrammok
%matlabban histogram
%matlab histogram(D,5,'Normalization','Probability')

[count, bin] = hist(SData,5)
bar(bin,count/n)

% histfit (SData, avg, szoras2)

mini=min(SData)
maxi=max(SData)

xr=mini:0.1:maxi;

yr=normpdf(xr,avg,szoras2);

hist(SData,5,1);

% histfit (SData)

for k=1:75
    plot(xr,yr,"linewidth", 5, 'r');
    hold on;
    hist(SData,k,1);
    pause(0.01)
    hold off;
    % F(k) = getframe(gca);
    F(k) = getframe(gca);
end
fig = figure;
movie(fig, F, 1);
