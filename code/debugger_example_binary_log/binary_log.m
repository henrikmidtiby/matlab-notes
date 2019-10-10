function [log_value] = binary_log(value, nIterations)
%BINARY_LOG Calculate the binary logarithm of a number

log_value = 0;

while value >= 2
    log_value = log_value + 1;
    value = value / 2;
end

while value < 1
    log_value = log_value - 1;
    value = value * 2;
end

if(nargin == 1)
    nIterations = 40;
end
log_value = log_value + refine_guess(value, nIterations);

end


function val = refine_guess(value, nIterations)

if nIterations > 0
    if value > 2
        val = 1 + refine_guess(value / 2, nIterations);
    else
        val = 1/2 * refine_guess(value^2, nIterations - 1);
    end
else
    val = 0;
    % Linear interpolation
    val = value - 1;
    % Quadratic interpolation
    %val = -0.353553390600102*value^2 + 2.060660171775893*value - 1.707106781188938;
end

end

