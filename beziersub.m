function  BS = beziersub(B,t,k)
% Opis: beziersub  izvede  subdivizijo  Bezierjeve  krivulje
%
% Definicija:
%   BS = beziersub(B,t)
%
% Vhodni  podatki:
%   B...matrika  kontrolnih  tock  Bezierjeve  krivulje , v
%kateri  vsaka  vrstica  predstavlja  eno  kontrolno
%tocko ,
%   t...parameter  subdivizije  Bezierjeve  krivulje
%
% Izhodni  podatek:
%   BS    celica , ki  vsebuje  kontrolne  tocke  dveh  krivulj , ki
%jih  dobimo s subdivizijo  prvotne  Bezierjeve  krivulje

d=size(B,2);
n=size(B,1)-1;

BS = cell(k,2^k);

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

for i=1:k
    for m=1:2:(2^i)
        BS{i,m}=zeros(d,n+1);
        BS{i,m+1}=zeros(d,n+1);
        z=(m+1)/2;
        if i==1
            B1=B;
        else
            B1=BS{i-1,z};
        end
            for j=1:d
               dec_b=B1(:,j);
               dec_D=decasteljau(dec_b,t);
               s = size(dec_D,1);
               b1_pom=dec_D(s:s-1:end-1);
               %size(b1_pom)
               %size(BS{i,m}(j,:))
               BS{i,m}(j,:)=fliplr(b1_pom);
               %BS{i,m+1}(j,:)=dec_D(1,:);
            end

    end
%BS{k,1}=b1;
%BS{k,2}=b2;
end

%BS{1}=b1;
%BS{2}=b2;

end