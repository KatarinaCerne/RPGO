function db = bezierder (B ,r , t )
% Opis :
% bezierder vrne toèke na krivulji , ki predstavlja odvod
% dane Bezierjeve krivulje
%
% Definicija :
% db = bezierder (B,r,t)
%
% Vhodni podatki :
% B matrika kontrolnih toèk Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% toèko ,
% r stopnja odvoda , ki ga raèunamo ,
% t seznam parameterov , pri katerih raèunamo odvod
%
% Izhodni podatek :
% db matrika , v kateri vsaka vrstica predstavlja toèko
% r- tega odvoda pri istoležnem parametru iz seznama t

dim=size(B,2); %dimenzija prostora
n=size(B,1)-1; %stopnja krivulje (št kontrolnih toèk)
k=length(t);

db=zeros(k,dim);

for i=1:k
    dec_t=t(i); %trenutni parameter t, s katerim raèunamo
    for j=1:dim
       %alternativni postopek:
       %dec_b=diff(B(:,j),r)*factorial(n)/factorial(n-r); %lahko najprej
       %naredimo diference kontrolnih toèk in potem na teh naredimo decasteljauja 
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

