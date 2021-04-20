function [x] = gepp(A, b)
%Funkcja gepp to algorytm eliminacji Gaussa z częściowym wyborem (GEPP).
%Jako argumenty przyjmuje macierz A i wektor wyrazów wolnych b.
%Funkcja zwraca wektor rozwiązań w przypadku, gdy układ jest oznaczony.
%W przeciwnym przypadku funkcja zwraca wektor NaN.

assert(size(A,1)==size(A,2) && size(b,1)==size(A,1) && size(b,2)==1)
A = [A b];
x = zeros(size(b,1),1);

%GEPP
for i=1:(size(A,2)-1)
    max_row = i;
    for j=(i+1):size(A,1)
        if abs(A(max_row,i))<abs(A(j,i))
            max_row = j;
        end
    end 
    replace_1 = A(max_row,:);
    replace_2 = A(i,:);
    A(i,:) = replace_1;
    A(max_row,:) = replace_2;
    
    for j=(i+1):size(A,1)
        if A(i,i) == 0
            continue
        end
        A(j,:) = A(j,:) - A(i,:)*(A(j,i)/A(i,i));
    end
end

%obliczenie wektora rozwiązań
for i=size(x,1):-1:1
    for j=size(x,1):-1:i
        A(i,size(A,2)) = A(i,size(A,2)) - A(i,j)*x(j,1);
    end
    x(i,1) = A(j,size(A,2))/A(i,i);
end

end