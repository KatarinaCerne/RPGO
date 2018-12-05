function [bx,by,bz] = bezier2(Bx ,By ,Bz,u,v)
% Opis:
%   bezier2  vrne  to�ke  na  Bezierjevi  ploskvi  iz  tenzorskega
%   produkta
%
% Definicija:
%   [bx ,by,bz] = bezier2(Bx,By ,Bz,u,v)
%
% Vhodni  podatki:
%   Bx , By, Bz    matrike  velikosti n+1 x m+1, ki  dolo�ajo
%   koordinate  kontrolnih  to�k ,
%   u, v
%   vrstici  dol�ine M in N, ki  predstavljata
%   parametre v smereh u in v.
%
% Izhodni  podatki:
%   bx , by, bz    matrike  velikosti N x M, ki  predstavljajo
%   to�ke  na  Bezierjevi  ploskvi:
%   [bx(J,I) by(J,I) bz(J,I)] je  to�ka  pri
%   parametrih u(I) in v(J).

n = size(Bx,1)-1;
m = size(Bx,2)-1;

N = length(v);
M = length(u);

bx = zeros(N,M);
by = zeros(N,M);
bz = zeros(N,M);

for iu = 1:length(u)
    for iv = 1:length(v)
        novi_b = zeros(m+1,3);
        for i=1:m+1
            b_za_not = [Bx(:,i),By(:,i),Bz(:,i)];
            novi_b(i,:)=bezier(b_za_not,v(iv)); %bezier vrne vrstico
        end
        vrednost = bezier(novi_b,u(iu));
        bx(iv,iu)=vrednost(1);
        by(iv,iu)=vrednost(2);
        bz(iv,iu)=vrednost(3);
    end
    
end

end