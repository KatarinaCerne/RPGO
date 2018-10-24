function db = bezierder (B ,r , t )
% Opis :
% bezierder vrne to�ke na krivulji , ki predstavlja odvod
% dane Bezierjeve krivulje
%
% Definicija :
% db = bezierder (B,r,t)
%
% Vhodni podatki :
% B matrika kontrolnih to�k Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% to�ko ,
% r stopnja odvoda , ki ga ra�unamo ,
% t seznam parameterov , pri katerih ra�unamo odvod
%
% Izhodni podatek :
% db matrika , v kateri vsaka vrstica predstavlja to�ko
% r- tega odvoda pri istole�nem parametru iz seznama t

dim=size(B,2); %dimenzija prostora
n=size(B,1)-1; %stopnja krivulje (�t kontrolnih to�k)
k=length(t);

db=zeros(k,dim);

for i=1:k
    dec_t=t(i);
    for j=1:dim
       dec_b=diff(B(:,j),r)*factorial(n)/factorial(n-r);       
       dec_D=decasteljau(dec_b,dec_t);
       db(i,j)=dec_D(1,end);
    end
end

%vpra�anje: to�ka 2. ?
end

