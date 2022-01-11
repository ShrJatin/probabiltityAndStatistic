p = 9/10;
pmf = geometric(p);

%expected val cal
exp = 0;
for i = 1:100
    exp = exp + power(i)*pmf(1,i);
end

display(exp);

%cdf calc
cdf = zeros(1,100);
cdf(1,1) = pmf(1,1);

for i = 2:100
    cdf(1,i) = pmf(1,i)+cdf(1,i-1);
end

%display cdf
x = (1:100);
bar(x,cdf),xlabel("observation"), ylabel("CDF");



%power calc
function pow =  power(z)
pow = 1/2;
for i = 2:z
    pow = pow*(1/2);
end
end


%pmf calc
function pmf = geometric(p)
q = 1-p;
pmf = zeros(1,100);
for i = 1:99
    pmf(1,i) = p*q^(i-1);
end
pmf(1,100) = q^(99);
end

