function [Bx,By,Bz] = lsqbezier2(m,n,P,u,v)
% Opis:
%   lsqbezier2  vrne  kontrolne  toèke  Bezierjeve  ploskve , ki
%   se po  metodi  najmanjših  kvadratov  najbolje  prilega  danim
%   podatkom
%
% Definicija:
%   [Bx ,By,Bz] = lsqbezier2(m,n,P,u,v)
%
% Vhodni  podatki:
%   m,n     parametra , ki  doloèata  stopnji  Bezierjeve
%   ploskve  iz  tenzorskega  produkta ,
%   P       matrika , ki v vrsticah  vsebuje  toèke v prostoru ,
%   za  katere  želimo , da jih  Bezierjeva  ploskev
%   èimbolje  aproksimira ,
%   u,v     seznama  parametrov , ki doloèata , kateri  toèki v
%   domeni  pripada  posamezna  toèka  iz P
%
% Izhodni  podatki:
%   Bx ,By,Bz  matrike  velikosti n+1 x m+1, ki  predstavljajo
%   kontrolne  toèke  Bezierjeve  ploskve  iz
%   tenzorskega  produkta , ki se po  metodi  najmanjših
%   kvadratov  najbolje  prilega  podatkom

l = size(P,1);

matrika = zeros(k,(m+1)*(n+1));

for k=1:l
    for i=1:n+1
        for j=1:m+1
            matrika(k,(i-1)*(m+1)+(j+1))=BernstMI(m,j,u(k))*BernstMI(n,i,v(k));
        end
    end
end

Bx = matrika\P(:,1);
By = matrika\P(:,2);
Bz = matrika\P(:,3);


end

function Bmi = BernstMI(m,i,uk)
b = zeros(m+1,1);
b(i+1)=1;
Bmi = bezier(b,uk);

end