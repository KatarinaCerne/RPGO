function Q = plotrbezier (B , w, t)

dim=size(B,2);
n=size(B,1)-1;

rbez = rbezier(B,w,t);

x=rbez(:,1);
y=rbez(:,2);

Q = zeros(n,dim);

for i=1:n
   imeno = w(i+1)+w(i);
   Q(i,:)= w(i)/imeno.*B(i,:)+w(i+1)/imeno.*B(i+1,:);    
end


plot(x,y)


end