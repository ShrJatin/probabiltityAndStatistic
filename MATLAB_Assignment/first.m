px=[0.025*ones(4,1); 0.225*ones(4,1)];

x=(40:10:110)';

%calculting pmf
z = [50, 0.2, 110, 120];

y=zeros(size(z(:)));

for i = 1:length(z)
    y(i) = sum(px(x==z(i)));

end

disp(y)

%plotting pmf
y=zeros(size(x(:)));

for i = 1:length(x)
    y(i) = sum(px(x==x(i)));
end

bar(x,y),xlabel("X"),ylabel("PMF");



