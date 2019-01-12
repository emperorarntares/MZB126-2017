f = @(x) -log(x + 0.01) + exp(x);
b = 1.827;
L = 5;

[vol] = viaduct_volume_n9934731(f,b,L)