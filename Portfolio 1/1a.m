x = [0:0.01:2];
g = 0; % Variable for g(x)
f = -log(x + 0.01) + exp(x); % function of f(x)
f2 = -log(g + 0.01) + exp(g); % function of g(x)
plot(x,f,'red','linewidth',1)
axis([-0.5 2 2 6])
hold on
plot([-2 2],[f2 f2],'black','linewidth',1)
title('Crosectional Area of Trough')
xlabel('Width (m)')
ylabel('Height (m)')
legend('f(x) = -log(x+0.01) + exp(x)','g(x) = f(0)','location','southeast')
grid on;

