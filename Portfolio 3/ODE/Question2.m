function Question2()
a = 10.6150;
b = 1.4940;
ODEFUN = @(t,y)a-b*y;
TSPAN = [0 2.7790];
Y0 = 0.9030;
h = 0.1848;
[TOUT,YOUT] = euler(ODEFUN,TSPAN,Y0,h)
end

function [TOUT,YOUT] = euler(ODEFUN,TSPAN,Y0,h)
t0 = TSPAN(1);
tf = TSPAN(2);

TOUT = t0:h:tf;
YOUT = Y0;
i = 1;

while TOUT(i) < TSPAN(2)
     YOUT(i+1) = YOUT(i) + h*ODEFUN(TOUT(i),YOUT(i));
     TOUT(i+1) = TOUT(i) + h;
     i = i + 1;
end
end

