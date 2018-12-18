Bx = [0,2,6,8;1,3,7,NaN;2,5,NaN,NaN;4,NaN,NaN,NaN];
By = [0,1,0,-1;2,2,3,NaN;4,3,NaN,NaN;5,NaN,NaN,NaN];
Bz = [-2,1,-2,0;4,-2,3,NaN;0,5,NaN,NaN;3,NaN,NaN,NaN];

d = 50;
u = linspace(0,1,d); %imeli bomo pravokoten trikotnik, kateti razdelimo na 50 delov
dim = nchoosek(d+1,2); %v trikotniku bo toliko to�k

U1 = zeros(dim,2); %sem shranjujemo kartezi�ne koordinate to�k v trikotniku
U2 = zeros(dim,3); %baricentri�ne koordinate 

T=[0,0;1,0;0,1]; % vrstice so kraji��a trikotnika

k=1;
%nara�unamo to�ke v trikotniku
%v teh to�kah bomo potem ra�unali vrednosti bez. krpe
for i=1:d
   for j=1:d+1-i
       U1(k,:)=[u(i),u(j)];
       U2(k,:)=pointbary(U1(k,:),T);
       k=k+1;
   end
end

TRI = delaunay(U1(:,1),U1(:,2)); %triangulacija za risanje krpe

b = bezier3(Bx,By,Bz,U2);

%odstranimo NaNe:
Bx1 = [0,2,6,8,1,3,7,2,5,4];
By1 = [0,1,0,-1,2,2,3,4,3,5];
Bz1 = [-2,1,-2,0,4,-2,3,0,5,3];

n=3; % stopnja
st_tock = length(Bx1); %�tevilo kontrolnih to�k
U3 = zeros(st_tock,2); %sem bomo shranili kartezi�ne koordinate domenskih to�k
%("nad" domenskimi to�kami le�ijo kontrolne to�ke)

l=1;
for k=1:n+1
   for j=1:n+2-k
     i=n+2-k-j;
     U3(l,:) = (i/n).*T(1,:)+((j-1)/n).*T(2,:)+((k-1)/n).*T(3,:); %domenske to�ke
     [i,j-1,k-1];
     l=l+1;
   end
end

TRI2 = delaunay(U3(:,1),U3(:,2)); %triangulacija za risanje kontrolne mre�e
hold on
trisurf(TRI,b(:,1),b(:,2),b(:,3))
trimesh(TRI2,Bx1,By1,Bz1,'Facecolor','none', 'EdgeColor','black');
hold off
