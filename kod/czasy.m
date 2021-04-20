%czasy
A12=[1];
A13=[0.5];
A22=[3];
A23=[1];
b=[1;2;1];
iteracja(A12,A13,A22,A23,b,10^-4);
A=zamiana(A12,A13,A22,A23);
blad_wzgledny=abs(norm(A\b)-norm(otrzymany_wektor_rozwiazan))./norm(A\b)

x = [1,2,3,4,5,6,7,8];
blad =[];
jacobi = [0.001338,0.006862,0.001051,0.003441,0.003833,0.001871,0.023280,0.147339];
matlab = [0.000784,0.003462,0.000865,0.000883,0.001522,0.000794,0.000813,0.000986];
roznica = jacobi-matlab;

x2 = [1,2,3,4,5,6];
jacobi2 = [0.001338,0.006862,0.001051,0.003441,0.003833,0.001871];
matlab2 = [0.000784,0.002179,0.000865,0.000883,0.001522,0.000794];
roznica2 = jacobi2-matlab2;

cond=[5.6,94.0896,18.9002,135.1177,55.1201,29.9476,294.7314,91.8768];
liczba_iteracji=[23,216,9,69,96,27,NaN,33];
blad_wzgledny=[1.2015e-04,5.3528e-04,7.1821e-06,2.0211e-04,2.6045e-04,7.0749e-06,NaN,9.7919e-06];


subplot(2,3,1),scatter(roznica,cond,'r','filled');
title("Różnica czasów a wskaźnik uwarunkowania");
xlabel("Róznica czasów w sekundach");
ylabel("Wskaźnik uwarunkowania");
axis([0 0.005 0 150]);
subplot(2,3,2),scatter(roznica,liczba_iteracji,'filled');
title("Różnica czasów a liczba iteracji");
xlabel("Róznica czasów w sekundach");
ylabel("Liczba iteracji");
axis([0 0.01/2 0 250]);
subplot(2,3,3),scatter(roznica,blad_wzgledny,'g','filled');
title("Różnica czasów a błąd względny");
xlabel("Róznica czasów w sekundach");
ylabel("Błąd względny");
axis([0 0.005 0 6*10e-5]);
subplot(2,3,4),scatter(cond,liczba_iteracji,'black','filled');
title("Wskaźnik uwarunkowania a liczba iteracji");
xlabel("Wskaźnik uwarunkowania");
ylabel("Liczba iteracji");
subplot(2,3,5),scatter(cond,blad_wzgledny,'m','filled');
title("Wskaźnik uwarunkowania a błąd względny");
xlabel("Wskaźnik uwarunkowania");
ylabel("Błąd względny");
subplot(2,3,6),scatter(liczba_iteracji,blad_wzgledny,'c','filled');
title("Liczba iteracji a błąd względny");
xlabel("Liczba iteracji");
ylabel("Błąd względny");

%figure
%subplot(2,1,1),scatter(x2,roznica2,'filled');
%title("Porównanie czasowe");
%ylabel("Różnica w sekundach");
%xlabel("Numer przykładu");
%subplot(2,1,2),scatter(x,roznica,'filled');
%ylabel("Różnica w sekundach");
%xlabel("Numer przykładu");
