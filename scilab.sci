function q = simpson ( t, y)
n = length (t) - 1;
// Les controles de taille et de croissance sont deja fournis.
if modulo (n, 2) == 1 then error ("Simpson exige n pair .") ; end
h = t(2) - t(1);
echelle = 1;
if abs(h) > 1 then echelle = abs(h) ; end
tol = 1e-10*echelle;
for i = 2:n
pas = t(i+1) - t(i);
if abs(pas -h) > tol then error ("Simpson exige des pas egaux ."); end
end
q = y(1) + y (n+1);
for i = 2:n
if modulo (i, 2) == 0 then
q = q + 4 * y(i);
else
q = q + 2 * y(i);
end
end
q = q * h/3;
endfunction
