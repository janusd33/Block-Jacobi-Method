function [A] = zamiana(A12,A13,A22,A23)
%Funkcja pomocnicza służąca do zamiany macierzy blokowej na macierz zwykłą.
%Jako argumenty przyjmuje cztery macierze o wymiarach pxp i zwraca macierz
%o wymiarach 3px3p o warunkach podanych w zadaniu.
p=size(A12,1);
assert(size(A12,2)==p && size(A13,1)==p && size(A13,2)==p && size(A22,1)==p && size(A22,2)==p && size(A23,1)==p && size(A23,2)==p)
I=eye(p,p);
X=zeros(p,p);
A=[I A12 A13; A12' -A22 A23; X A23' A22];
end

