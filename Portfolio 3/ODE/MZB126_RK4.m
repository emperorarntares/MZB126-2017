function [TOUT,YOUT] = MZB126_RK4(ODE,tspan,IC,h)

TOUT = tspan(1):h:tspan(2);
YOUT = zeros(size(TOUT));
YOUT(1) = IC;

for i = 1:length(TOUT)-1
    k1 = ODE(TOUT(i),YOUT(i));
    k2 = ODE(TOUT(i)+h/2,YOUT(i)+h/2*k1);
    k3 = ODE(TOUT(i)+h/2,YOUT(i)+h/2*k2);
    k4 = ODE(TOUT(i)+h,YOUT(i)+h*k3);
    
    YOUT(i+1) = YOUT(i)+h/6*(k1+2*k2+2*k3+k4);
end

figure
plot(TOUT,YOUT)
hold on
xlabel('t')
ylabel('y')
title('RK4')

end