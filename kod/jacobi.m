function [x1] = jacobi(A12,A13,A22,A23,b,x0)
%Funkcja oblicza kolejne przybliżenie metody Jacobiego. Funkcja przyjmuje 
%cztery macierze o wymiarach pxp i wektor wyrazów wolnych o wymiarach p*3x1,
%a także wektor x0 będący poprzednim przybliżeniem metody Jakobiego. Jeśli
%jest to pierwsze wywołanie funkcji, tego argumentu się nie podaje, a
%funkcja przypisuje do niego wektor zerowy.

p = size(A12,1);
if nargin==5
    x01 = zeros(p,1);
    x02 = zeros(p,1);
    x03 = zeros(p,1);
else
   x01 = x0([1:p],[1]);
    x02 = x0([p+1:2*p],[1]);
    x03 = x0([2*p+1:3*p],[1]); 
end

I = eye(p,p);
b1 = b([1:p],[1]);
b2 = b([p+1:2*p],[1]);
b3 = b([2*p+1:3*p],[1]);

x11=gepp(I,b1-A12*x02-A13*x03);
x12=gepp(-A22,b2-A12'*x01-A23*x03);
x13=gepp(A22,b3-A23'*x02);%skip zero
x1 = [x11;x12;x13];

end