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

n = size(Bx,1)-1; %stopnja v v-smeri
m = size(Bx,2)-1; %stopnja v u-smeri

N = length(v); %�t. to�k v v-smeri
M = length(u); %�t. to�k v u-smeri

bx = zeros(N,M); %u te�e, v fiksen: vrstica
by = zeros(N,M);
bz = zeros(N,M);

for iu = 1:length(u)
    for iv = 1:length(v)
        novi_b = zeros(m+1,3);
        %pri fiksnem u imamo krivuljo stopnje n s kontrolnimi to�kami 
        %sum_{i=0}^m b_ij B_i^m(u)
        for i=1:m+1
            b_za_not = [Bx(:,i),By(:,i),Bz(:,i)]; %velikosti (n+1)x3
            %to je kontrolni poligon za prerez pri fiksnem u
            novi_b(i,:)=bezier(b_za_not,v(iv)); %bezier vrne vrstico
            %sem shranimo to�ke sum_{i=0}^m b_ij B_i^m(u) - to je ena
            %vrstica v novi_b
            %novi_b je kontrolni poligon za zadnjega decasteljauja, ki ga
            %moramo izvesti
        end        
        vrednost = bezier(novi_b,u(iu));
        bx(iv,iu)=vrednost(1);
        by(iv,iu)=vrednost(2);
        bz(iv,iu)=vrednost(3);
    end
    
end

end