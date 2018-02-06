function [x_cs, y_cs] = parametricSpline(Sx, Sy)
N = length(Sx);
t = zeros(1,N);
x_cs = [];
y_cs = [];

for i = 1:N-1
    t(i+1) = t(i) + sqrt((Sx(i+1)-Sx(i))^2+(Sy(i+1)-Sy(i))^2);
end

A = length(t);
tref=zeros(1,6*(N-1)+1);
for k = 1:A-1
    i = 6*(k-1)+1;
    dt = t(k+1)-t(k);
    tref(i)=t(k);
    tref(i+1)=t(k)+dt/6;
    tref(i+2)=t(k)+2*dt/6;
    tref(i+3)=t(k)+3*dt/6;
    tref(i+4)=t(k)+4*dt/6;
    tref(i+5)=t(k)+5*dt/6;    
end
tref(6*(N-1)+1)=t(N);

x_cs=spline(t,Sx,tref);
y_cs=spline(t,Sy,tref);
end