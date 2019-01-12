function [message,Area] = n9934731trough(Func,EndPoint)
[x,y,y0] = trough_create(Func,EndPoint);
trough_plot(x,y,y0)
Area = trough_area(x,y,y0);
message = trough_error(y);
end

function [x,y,y0] = trough_create(Func,EndPoint)
x = linspace(0,EndPoint,185)
y = Func(x)
y0 = ones(1,185)*Func(0)
end

function trough_plot(x,y,y0)
plot(x,y,'color','black','linewidth',2,'linestyle','--')
hold on;
plot(x,y0,'color','yellow','linewidth',5,'linestyle','--')
end

function Area = trough_area(x,y,y0)
Area = 0;
    for i = 1:length(x)-1
        StepSize = x(i+1)-x(i);
        Trapezoid_Rule = StepSize*((y0(i+1)-(y(i+1)))+(y0(i)-y(i)))/2;
        Area = Area + Trapezoid_Rule;
    end
end


function message = trough_error(y)
    if abs(y(1)-y(end))>10^(-3)
        message = 'Warning: Trough Area is invalid since shape does not close properly';
    elseif max(y(2:length(y)-1)) > y(1)
        message = 'Warning: Trough Area will be incorrect since y exceeds y0 at a certain point';
    else
        message = 'Trough Area is valid';
    end
end