x=(1:10)';
lambda = 3;

%poission cdf inbuilt
y = poisscdf(x,lambda);

% displaying cdf
disp(y);


%displaying graph
bar(x,y),xlabel("observations"),ylabel("CDF")