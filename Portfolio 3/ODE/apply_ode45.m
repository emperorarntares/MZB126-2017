function [TOUT,YOUT] = apply_ode45()
    ODEFUN = @(t,y) 8.15-1.44*y^2;
    TSPAN = [0 1];
    Y0 = 0;
    [TOUT, YOUT] = ode45(ODEFUN,TSPAN,Y0)
end