function  BS = beziersub(B,t,k)
% Opis: beziersub  izvede  subdivizijo  Bezierjeve  krivulje
%
% Definicija:
%   BS = beziersub(B,t)
%
% Vhodni  podatki:
%   B   matrika  kontrolnih  tock  Bezierjeve  krivulje , v
%   kateri  vsaka  vrstica  predstavlja  eno  kontrolno
%   tocko ,
%   t   parameter  subdivizije  Bezierjeve  krivulje
%
% Izhodni  podatek:
%   BS  celica , ki  vsebuje  kontrolne  tocke  dveh  krivulj , ki
%   jih  dobimo s subdivizijo  prvotne  Bezierjeve  krivulje

d=size(B,2);
n=size(B,1)-1;

BS = cell(k,2^k);

for i=1:k
    for m=1:2:(2^i) %za vsak i ustvarimo 2^i celic tj. v i-ti vrstici je 2^i matrik
        %po 2 sosednji matriki izhajata iz iste prejšnje matrike
        BS{i,m}=zeros(n+1,d);
        BS{i,m+1}=zeros(n+1,d);
        z=(m+1)/2; %nam da položaj matrike iz višjega nivoja, iz katere bosta izšli matriki, ki ju trenutno delamo
        if i==1
            B1=B;
        else
            B1=BS{i-1,z}; %iz te matrike bosta izšli matriki, ki ju delamo
        end
            for j=1:d
               dec_b=B1(:,j);
               dec_D=decasteljau(dec_b,t);
               s = size(dec_D,1);
               BS{i,m+1}(:,j)=dec_D(end-s+1:-s+1:s); %druga diagonala(od desno zgoraj do levo spodaj)
               BS{i,m}(:,j)=dec_D(1,:); %obraèanje??
            end

    end

end

% b1=zeros(d,n+1);
% b2=zeros(d,n+1);

% for j=1:d
%    dec_b=B(:,j);
%    dec_D=decasteljau(dec_b,t);
%    s = size(dec_D,1);
%    b1_pom=dec_D(s:s-1:end-1);
%    b1(j,:)=fliplr(b1_pom);
%    b2(j,:)=dec_D(1,:);
% end
% 
% BS{1,1}=b1;
% BS{1,2}=b2;
end