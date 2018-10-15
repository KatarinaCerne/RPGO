n=5;
hold on

for i=1:n+1
b=zeros(n+1);
b(i)=1;
p=bernstein2power(b);

x=linspace(0,1,100);
y=polyval(p,x);
plot(x,y)
end

hold off
