figure

t(1) = 0;

for i = 2:51
    t(i) = (5/50)*(i-1);
end 
k = ModifiedEuler(@basicFunction,0,5,50,1/2);
plot(t,k,'.');
hold on;
plot (t,(2+t.^3).^(-1))
title("modified euler")