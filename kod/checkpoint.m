function [B,rho,cond] = checkpoint(A12,A13,A22,A23)
%Funkcja checkpoint służy do obliczenia dodatkowych parametrów wymaganych
%w zadaniu. Jako argumenty przyjmuje cztery macierze o wymiarach pxp.
%Funkcja zwraca macierz iteracji, promień spektralny oraz wskaźnik
%uwarunkowania macierzy.

A=zamiana(A12,A13,A22,A23);
B=zeros(size(A));
for i=1:size(A)
    for j=1:size(A)
        if i==j
            continue
        end
        B(i,j)=-A(i,j)/A(i,i);
    end
end

rho=max(abs(eig(B)));

cond = max(sum(abs(A)))*max(sum(abs(A^(-1))));
end

