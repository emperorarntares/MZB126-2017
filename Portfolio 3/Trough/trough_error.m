function message = trough_error(y)
    if abs(y(1)-y(end))>10^(-3)
        message = 'Warning: Trough Area is invalid since shape does not close properly';
    elseif max(y(2:length(y)-1)) > y(1)
        message = 'Warning: Trough Area will be incorrect since y exceeds y0 at a certain point';
    else
        message = 'Trough Area is valid';
    end
end