l = 3;
m = 2;
n = 1;
matrika = zeros(l,(m+1)*(n+1));

for k=1:l
    for i=1:n+1
        for j=1:m+1
            matrika(k,(i-1)*(m+1)+j)=BernstMI1(m,j-1,1/2)*BernstMI1(n,i-1,1/2);
            matrika(k,(i-1)*(m+1)+j)
        end
    end
end