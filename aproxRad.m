function [y] = aproxRad(nr,epsilon)

eroare = epsilon+1;
x(2) = 1;

if nr<0
    error('Numarul trebuie sa fie pozitiv')
end

while eroare >= epsilon

    x(1) = x(2);
    x(2) = (x(1)/(2*nr))*(3*nr-x(1)^2);
    eroare = abs(sqrt(nr)- x(2));
end
y = x(2);

fprintf('Radacina patrata aproximata a nr %f este %f \n',nr,y)

end