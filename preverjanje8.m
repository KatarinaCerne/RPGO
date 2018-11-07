D=[-5,0;-4,1;-2,-1;0,3;3,0;5,2;7,-1];
m=4;
u1=zeros(1,m+1);
u2=zeros(1,m+1);
u3=zeros(1,m+1);

for i=1:m+1
   u1(i)=i-1;
end

u2(1)=0;
for i=2:m+1
    u2(i)=u2(i-1)+norm(D(i+1,:)-D(i,:));
end

u3(1)=0;
for i=2:m+1
    u3(i)=u3(i-1)+(norm(D(i+1,:)-D(i,:)))^(1/2);
end

beziercubspline(u3,D)

P=[-4,1;-2,-1;0,3;3,0;5,2];
u=alphaparam(P,1/2);