% fzero function
x = [0:0.01:2]
f = @(x)-log(x + 0.01) + exp(x) - 5.605
f2 = 0; % function of g(x)
zero = fzero(f,2)
plot(x,f(x),'red');
hold on
plot([0 2],[f2 f2],'black','linewidth',1)
plot(zero,f(zero),'ro');
title('Second intercept of the two curves')
xlabel('Width (m)')
ylabel('Height (m)')
legend('f(x) = -log(x+0.01) + exp(x)','g(x) = f(0)','x-intercept = 1.8266','location','southeast')
grid on;
