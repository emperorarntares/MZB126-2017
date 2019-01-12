syms y(t) %must define y and t as symbolic variables, where y is a function of t
dy = diff(y); %defining first order derivative, y'(t)
d2y = diff(y,2); %defining second order derivative, y''(t)
dsolve(dy + 1/5*y  == 2)
pretty(ans)
