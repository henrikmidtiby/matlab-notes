function [list1, list2] = divide_by_pivot4(list, pivot)

list1 = [];
list2 = [];

% Gå igennem input listen et element af gangen
for val = list    
    % Hvis elementet er mindre end pivot værdien,
    % så tilføj det til liste 1, ellers tilføj
    % det til liste 2.
    if val < pivot
        % tilføj værdien til liste 1
        list1 = [list1, val];
    else
        % tilføj værdien til liste 2
        list2 = [list2, val];
    end
end
    end

