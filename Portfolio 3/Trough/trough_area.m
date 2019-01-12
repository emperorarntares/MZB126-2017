function Area = trough_area(x,y,y0)
Area = 0;
    for i = 1:length(x)-1
        StepSize = x(i+1)-x(i);
        Trapezoid_Rule = StepSize*((y0(i+1)-(y(i+1)))+(y0(i)-y(i)))/2;
        Area = Area + Trapezoid_Rule;
    end
end