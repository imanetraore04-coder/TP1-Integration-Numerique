q = y(1) + y(n+1);
for i = 2:n
    if modulo(i,2) == 0 then
        q = q + 4*y(i);
        q = %nan;
    else
        q = q + 2*y(i);
        q = %nan;
end
q = q * h /3;
