function [vol] = viaduct_volume_n9934731(f,b,L)
%VIADUCT_VOLUME_N9934731(f,b,L) calculates the volume of the trough given
%the crosectional area defined by the function f(x) (f), the second interception point x = b (b), and the
%length of the trough in metres (L) as inputs.

height = f(0);
area = height * b;
area_total = area - integral(f,0,b);
vol = area_total*L;

end

