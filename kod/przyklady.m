%Przykład 1
disp("PRZYKŁAD 1")
A12=[1];
A13=[0.5];
A22=[3];
A23=[1];
b=[1;2;1];
[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end
%PRZYKŁAD 2
disp("PRZYKŁAD 2")
A12=[1 3; 4 5];
A13=[2 8;7 3];
A22=[60 -2;-3 60];
A23=[3 4; 5 6];
b=[1;2;3;4;5;6];

[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end
%Przykład 3
disp("PRZYKŁAD 3")
A12=[0.3 0.4; 0.5 0.5];
A13=[0.2 0.3; 0.5 0.5];
A22=[15 0.5; 0.5 12];
A23=[0.5 0.5; 1 1];
b=[1;2;1;1;2;1];
[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end
%PRZYKŁAD 4
disp("PRZYKŁAD 4")
A12=[1 3 4;1 4 2.5; 2 3 2.3];
A13=[2 3 1.8;2 3 2;1 2.7 3];
A22=[80 -2 6;-3 80 5; 2 7 80];
A23=[3 4 7;2 5 6; 2 7 3];
b=[1;2;3;4;5;6;7;8;9];
[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end

%PRZYKŁAD 5
disp("PRZYKŁAD 5")
A12=[1 1.5 2;1.33 2 1.5; 1 1 2];
A13=[1.66 2.5 1;2 1 2;1 2 1.5];
A22=[20 -2 1;-1.5 23 2; 1 1.33 31];
A23=[1.33 2 1;1 1 1; 2 1.5 1];
b=[1;2;3;4;5;6;7;8;9];
[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end
%PRZYKŁAD 6
disp("PRZYKŁAD 6")
A12=[0.6 0.5 0.2;0.4 0.2 0.5; 1 0.3 0.7];
A13=[0.6 0.7 0.4;0.5 0.1 0.2;-0.1 0.2 -0.6];
A22=[-4 0.2 1;0.5 6 0.4; -0.1 0.3 -6];
A23=[0.3 0.2 0.4;0.9 0.8 0.3; 0.2 0.5 0.4];
b=[1;2;3;4;5;6;7;8;9];
[B,rho,cond]=checkpoint(A12,A13,A22,A23);
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end
%PRZYKŁAD 7
disp("PRZYKŁAD 7")
A12=[4 2 1;1 1 2; 2 1 7];
A13=[2 2 1;2 1 2;1 2 5];
A22=[2 3 3;3 2 3; 3 3 2];
A23=[3 4 4;3 4 4; 7 4 3];
b=[1;2;3;4;5;6;7;8;9];
[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end
%Przykład 8
disp("PRZYKŁAD 8")
A12=[1 2 1 2 1;1 1 2 1.5 2;1 1 2 1 3; 2 0 1 0 2; 1 3 0 0 0];
A13=[2 2 1 1 1;2 1 1.5 1.5 2;1 3 1 2 1; 2 2 2 3 0; 1 1.5 1.5 0 0];
A22=[40 1 1 1.5 1.5; 0 40 1 3 2 ; 0 0 40 3 2; 1.5 1 2 40 1; 0 0 1 2 -40];
A23=[0 1.5 1.5 1.5 2;1 1 1.5 1 2; 0 1 0 1 1.5; 2 2 1 0 0; 1.5 2 1.5 1 0];
b=[1;2;3;4;5;6;7;8;9;1;2;3;4;5;6];
[B,rho,cond]=checkpoint(A12,A13,A22,A23)
[otrzymany_wektor_rozwiazan,liczba_iteracji]=iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
otrzymany_wektor_rozwiazan
if  not(isstring(otrzymany_wektor_rozwiazan))
    prawdziwe_rozwiazanie=A\b
    liczba_iteracji
    blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)
end