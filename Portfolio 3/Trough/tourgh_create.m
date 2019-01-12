function [x,y,y0] = trough_create(Func,EndPoint)
x = linspace(0,EndPoint,185)
y = Func(x)
y0 = ones(1,185)*Func(0)

end