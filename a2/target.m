function T = target(t, P)

global SP ST RT D

    dt = direction(P(4), P(5), P(1), P(2), P(3));
    T = zeros(6,1);
    T(1) = SP*cos(P(3)); 
    T(2) = SP*sin(P(3));
    T(3) = SP*(dt-P(3))/(abs(dt-P(3))+D);
    T(4) = ST*cos(P(6));
    T(5) = ST*sin(P(6));
    T(6) = ST/(10*RT);
end

