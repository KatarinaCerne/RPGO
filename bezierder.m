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
    dec_t=t(i); %trenutni parameter t, s katerim ra�unamo
    for j=1:dim
       %alternativni postopek:
       %dec_b=diff(B(:,j),r)*factorial(n)/factorial(n-r); %lahko najprej
       %naredimo diference kontrolnih to�k in potem na teh naredimo decasteljauja 
       %dec_D=decasteljau(dec_b,dec_t);
       %db(i,j)=dec_D(1,end); %to je delta^r b_0^{n-r}
       %-----------------------------------------------
       dec_D=decasteljau(B(:,j),dec_t); %dobimo decasteljaujevo shemo
       delaj_dif=dec_D(:,n-r+1); %rabimo dif^d b_0^{n-r}, kar dobimo tako, 
       %da vzamemo (n-r)ti stolpec v shemi in na njem delamo diference
       diferenca=diff(delaj_dif,r); %diff(vektor,r) naredi r-to diferenco na elementih vektorja
       %vsi elementi razen prvega so NaN, rezultat je prvi element v
       %vektorju 'diferenca'
       db(i,j)=factorial(n)/factorial(n-r)*diferenca(1);
    end
end

end

