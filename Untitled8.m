Bx = [0,2,6,8;1,3,7,NaN;2,5,NaN,NaN;4,NaN,NaN,NaN];
By = [0,1,0,-1;2,2,3,NaN;4,3,NaN,NaN;5,NaN,NaN,NaN];
Bz = [-2,1,-2,0;4,-2,3,NaN;0,5,NaN,NaN;3,NaN,NaN,NaN];

d = 30
u = linspace(0,1,d);
%v = linspace(0,1,3);
dim = nchoosek(d+1,2);

U1 = zeros(dim,2);
U2 = zeros(dim,3);

T=[0,0;1,0;0,1];

k=1;
for i=1:d
   for j=1:d+1-i
       U1(k,:)=[u(i),u(j)];
       U2(k,:)=pointbary(U1(k,:),T);
       k=k+1;
   end
end

TRI = delaunay(U1(:,1),U1(:,2));

b = bezier3(Bx,By,Bz,U2);

hold on
trisurf(TRI,b(:,1),b(:,2),b(:,3))
%trimesh(TRI,

