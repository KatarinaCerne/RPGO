B=[0,0;2,3;4,2;5,-1];
t=2;
t1=linspace(1,2);
t_novnov=(t_nov-1)./(2-1);
t2=linspace(0,1);

d=size(B,2);
n=size(B,1)-1;

b1=zeros(d,n+1);

for j=1:d
   dec_b=B(:,j);
   dec_D=decasteljau(dec_b,t);
   s = size(dec_D,1);
   b1(j,:)=dec_D(s:s-1:end-1);
end

plotbezier(B,t2,1);
hold on
plotbezier(b1',t_novnov,1);