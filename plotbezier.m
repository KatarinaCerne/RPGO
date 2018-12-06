function plotbezier (B , t,poligon)
% Opis :
% plotbezier nariše Bezierjevo krivuljo za dane kontrolne
% toèke in seznam parametrov
%
% Definicija :
% plotbezier (B,t)
%
% Vhodni podatki :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% toèke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dolžine k, pri katerih raèunamo
% vrednost Bezierjeve krivulje

bez_b=bezier(B,t); %v vrstici so koordinate toèke pri parametru t, tj. Bn(t)

dim = size(B,2);

if dim == 2
    x=bez_b(:,1);
    y=bez_b(:,2);

    if poligon==1
        plot(x,y)
        hold on
        plot(B(:,1),B(:,2),'-')
        hold on
        scatter(B(:,1),B(:,2),'filled')
        hold off
    else
        plot(x,y)
    end

elseif dim==1
    x=linspace(0,1);
    plot(x,bez_b); %podati je treba polinom v èloveškem naèinu
    
elseif dim==3
    x=bez_b(:,1);
    y=bez_b(:,2);
    z=bez_b(:,3);
    
    %surf(x,y,z);
    scatter3(B(:,1),B(:,2),B(:,3));
    hold on
    plot3(x,y,z);
    hold on
    plot3(B(:,1),B(:,2),B(:,3),'b');
    hold off
end

%1d in 3d??

end