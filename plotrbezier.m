function Q = plotrbezier (B , w, t, poligon)

dim=size(B,2);
n=size(B,1)-1;

rbez = rbezier(B,w,t);

x=rbez(:,1);
y=rbez(:,2);

Q = zeros(n,dim);

for i=1:n
   imeno = w(i+1)+w(i);
   Q(i,:)= w(i)/imeno.*B(i,:)+w(i+1)/imeno.*B(i+1,:);  %i-ta farinova toèka
end

if poligon == 0
    plot(x,y)
else
plot(x,y)
hold on
plot(B(:,1),B(:,2));
hold on
scatter(B(:,1),B(:,2),'b','filled');
hold on
scatter(Q(:,1),Q(:,2),'r','filled');
hold off
end
end