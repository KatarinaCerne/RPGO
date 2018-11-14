function [Be,we] = rbezierelv(B,w)
% Opis:
%   rbezierelv  izvede  višanje  stopnje  dane  racionalne
%   Bezierjeve  krivulje
%
% Definicija:
%   [Be ,we] = rbezierelv(B,w)
%
% Vhodna  podatka:
%   B   matrika  velikosti (n+1) x d, v kateri  vsaka  vrstica
%   predstavlja d-dimenzionalno  kontrolno  toèko
%   racionalne  Bezierjeve  krivulje  stopnje n,
%
%   w   seznam  uteži  racionalne  Bezierjeve  krivulje
%
% Izhodni  podatek:
%   Be    matrika  velikosti n+2 x d, v kateri  vsaka  vrstica
%   predstavlja d-dimenzionalno  kontrolno  toèko
%   racionalne  Bezierjeve  krvulje  stopnje n+1, ki je
%   prirejena  dani  racionalni  Bezierjevi  krivulji ,
%
%   we    seznam  dolžine n+2, v katerem  vsak  element
%   predstavlja  utež  racionalne  Bezierjeve  krvulje
%   stopnje n+1, ki je  prirejena  dani  racionalni
%   Bezierjevi  krivulji

dim = size(B,2);
n = size(B,1)-1;

B_nova = zeros(n+1,dim+1);
we = zeros(n+2);
Be = zeros(n+2,dim);

for i=1:n+1
    B_nova(i,1:end-1)=w(i).*B(i,:);
    B_nova(i,end)=w(i);
end

%Be = bezierelv(B_nova,1);
%we = Be(:,end);
% for i=1:n
%     Be(i,:) = Be(i,:)/we(i);
% end





end