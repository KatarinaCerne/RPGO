function [Bx,By,Bz] = lsqbezier2(m,n,P,u,v)
% Opis:
%   lsqbezier2  vrne  kontrolne  to�ke  Bezierjeve  ploskve , ki
%   se po  metodi  najmanj�ih  kvadratov  najbolje  prilega  danim
%   podatkom
%
% Definicija:
%   [Bx ,By,Bz] = lsqbezier2(m,n,P,u,v)
%
% Vhodni  podatki:
%   m,n     parametra , ki  dolo�ata  stopnji  Bezierjeve
%   ploskve  iz  tenzorskega  produkta ,
%   P       matrika , ki v vrsticah  vsebuje  to�ke v prostoru ,
%   za  katere  �elimo , da jih  Bezierjeva  ploskev
%   �imbolje  aproksimira ,
%   u,v     seznama  parametrov , ki dolo�ata , kateri  to�ki v
%   domeni  pripada  posamezna  to�ka  iz P
%
% Izhodni  podatki:
%   Bx ,By,Bz  matrike  velikosti n+1 x m+1, ki  predstavljajo
%   kontrolne  to�ke  Bezierjeve  ploskve  iz
%   tenzorskega  produkta , ki se po  metodi  najmanj�ih
%   kvadratov  najbolje  prilega  podatkom

l = size(P,1);

matrika = zeros(l,(m+1)*(n+1));

for k=1:l
    for i=1:n+1
        for j=1:m+1
            matrika(k,(i-1)*(m+1)+j)=BernstMI(m,j,u(k))*BernstMI(n,i,v(k));
        end
    end
end


Rx = matrika\P(:,1);
Ry = matrika\P(:,2);
Rz = matrika\P(:,3);


Bx = reshape(Rx,[m+1,n+1])';
By = reshape(Ry,[m+1,n+1])';
Bz = reshape(Rz,[m+1,n+1])';

end

function Bmi = BernstMI(m,i,uk)
%vrednost B^m_i(uk)
b = zeros(m+1,1);
b(i+1)=1;
Bmi = bezier(b,uk);

end