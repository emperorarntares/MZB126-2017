function n9934731ode()
ODEFUN = @(t,y) 8.15-1.44*y^2;
TSPAN = [0 1];
Y0 = 0;
[TOUT, YOUT] = ode45(ODEFUN,TSPAN,Y0)
plot(TOUT,YOUT);
hold on
    for h = [0.1,0.3,0.5] %euler2 stepsizes
        [TOUT,YOUT] = euler2(ODEFUN,TSPAN,Y0,h);
        plot(TOUT,YOUT);
    end
title('Eulers Method Stepsizes')
xlabel('TSPAN')
ylabel('Y0')
legend('ode45','h = 0.1','h = 0.3','h = 0.5','location','southwest')
hold off;

end

function [TOUT,YOUT] = apply_ode45()
    ODEFUN = @(t,y) 8.15-1.44*y^2;
    TSPAN = [0 1];
    Y0 = 0;
    [TOUT, YOUT] = ode45(ODEFUN,TSPAN,Y0)
end

function [TOUT,YOUT] = euler2(ODEFUN,TSPAN,Y0,h)
t0 = TSPAN(1);
tf = TSPAN(2);

TOUT = t0:h:tf;
YOUT = Y0;
i = 1;

while TOUT(i) < TSPAN(2)
     YOUT(i+1) = YOUT(i) + h*ODEFUN(TOUT(i),YOUT(i));
     TOUT(i+1) = TOUT(i) + h;
     if TOUT(i+1) + h > TSPAN(2)
         h = TSPAN(2) - TOUT(i+1);
     end
     i = i + 1;
end
end
