%
%    Demonstration of pursuit problem
%
figure
global ST SP RT D DMIN

y0     = [0;0;-pi;5;5;0];
SP     = 3;
ST     = 2;
D      = 0.001;
RT     = 0.25;
DMIN   = 0.01;
tol    = 0.000001;


t0 = 0; tfinal = 20;

options=odeset('AbsTol',tol,'RelTol',tol,'MaxOrder',5,'Stats','on');

options=odeset(options,'Events',@rocket,'Refine',4);

[t,y] = ode45(@target,[t0,tfinal],y0,options);
%[t,y] = ode15s(@target,[t0,tfinal],y0,options);

plot (y(:,4),y(:,5));
hold on
plot (y(:,1),y(:,2));

