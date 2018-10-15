function p = bernstein2power(b)
% Opis: 
% power2bernstein pretvori polinom, predstavljen s 
% koeficienti v poten�ni bazi, v polinom, predstavljen 
% v Bernsteinovi bazi 
% 
% Definicija: 
% b = power2bernstein(p) 
% 
% Vhodni podatek: 
% p seznam koeficientov dol�ine n+1, ki po vrsti 
% pripadajo razvoju polinoma stopnje n v poten�ni 
% bazi od x^n do 1 
% 
% Izhodni podatek: 
% b seznam koeficientov dol�ine n+1, ki po vrsti 
% pripadajo razvoju polinoma stopnje n v Bernsteinovi 
% bazi od 0-tega do n-tega Bernsteinovega baznega 
% polinoma

n = length(b)-1;
p=zeros(1,n+1);
b=fliplr(b);
for i=1:n+1
    for j=i:n+1
        p(j)=p(j)+b(i)*nchoosek(j-1,i-1)/nchoosek(n,i-1);
        
    end
    
end
end