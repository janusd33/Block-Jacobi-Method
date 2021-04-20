function [xk1,i] = iteracja(A12,A13,A22,A23,b,eps) 
%Funkcja iteracja oblicza kolejne przybliżenia metody Jacobiego. Warunkiem
%stopu jest różnica długości kolejnych wektorów o eps. Maksymalna liczba
%iteracji wynosi 1000. Funkcja przyjmuje cztery macierze o wymiarach pxp 
%i wektor wyrazów wolnych o wymiarach p*3x1. Funkcja zwraca wektor rozwiązań
%równania podanego w zadaniu oraz liczbę iteracji.
p = size(A12,1);
assert(size(A12,2)==p && size(A13,1)==p && size(A13,2)==p && size(A22,1)==p && size(A22,2)==p && size(A23,1)==p && size(A23,2)==p && size(b,1)==3*p && size(b,2)==1)
[xk] = jacobi(A12,A13,A22,A23,b);
i=1;
while i<1000
    [xk1] = jacobi(A12,A13,A22,A23,b,xk);
    i=i+1;
    if abs(norm(xk)-norm(xk1))<eps
        return
    end
    xk = xk1;
    
end
xk1="Metoda jest rozbieżna dla podanych argumentów";
end
