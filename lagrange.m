function p = lagrange(P,Q)
    n=length(P);
    L=poly(P(2:n));
    p=L*Q(1)/polyval(L,P(1));
    for i=2:n
        L=poly([P(1:i-1),P(i+1:n)]);
        p=p+L*Q(i)/polyval(L,P(i));
    end
end
