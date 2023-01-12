clear all;
clc;

n = 10000;

a=0;
b=1;

data=a+rand(n,1)*(b-a);

y=zeros(n,1);

lmbd=1/10;

for i=1:n
    y(i) = log(1/(1-data(i)))/lmbd;
end

y;

filename='Exponencialis.txt';
fid = fopen(filename,"w");
fprintf(fid, '%f\n',y);
fclose(fid);

DataAnalysis("Exponencialis.txt",1,25)
% DataAnalysis("Exponencialis.txt")