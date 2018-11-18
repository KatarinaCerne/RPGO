function p = bernstein2power(b)
% Opis: 
% bernstein2power pretvori polinom, predstavljen s 
% koeficienti v Bernsteinovi bazi, v polinom, predstavljen 
% v potenèni bazi 
% 
% Definicija: 
% p = bernstein2power(b) 
% 
% Vhodni podatek: 
% b seznam koeficientov dolžine n+1, ki po vrsti 
% pripadajo razvoju polinoma stopnje n v Bernsteinovi 
% bazi od B_n^n do B_0^n 
% 
% Izhodni podatek: 
% p seznam koeficientov dolžine n+1, ki po vrsti 
% pripadajo razvoju polinoma stopnje n v potenèni
% bazi od 1 do x^n


n = length(b)-1;%stopnja polinoma
b=fliplr(b);
p=zeros(1,n+1);
for i=1:n+1
    for j=i:n+1
        p(j)=p(j)+b(i)*(-1)^(i+j-2)*nchoosek(n,j-1)*nchoosek(j-1,i-1);
        
    end
    
end

if n==0
   p=p(1); 
end
end