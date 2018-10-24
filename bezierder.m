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
    dec_t=t(i);
    for j=1:dim
       dec_b=diff(B(:,j),r)*factorial(n)/factorial(n-r);       
       dec_D=decasteljau(dec_b,dec_t);
       db(i,j)=dec_D(1,end);
    end
end

%vprašanje: toèka 2. ?
end

