function [dP,halt,direction] = rocket(t,P)

global DMIN

d = sqrt((P(4)-P(1))^2+(P(5)-P(2))^2);

dP=d-DMIN;
halt=1;
direction=0;

end

