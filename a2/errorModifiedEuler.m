for i = 1:11
    N = 10 * 2^(i-1);
    approx = ModifiedEuler(@basicFunction,0,5,N,1/2);
    exact = (2+5^3).^(-1);
    err(i) = abs(approx(length(approx))-exact);
end

for i = 1:10
    rat(i) = err(i+1)/err(i);
    p(i) = log2(1/rat(i))
end