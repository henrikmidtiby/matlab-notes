function [list1, list2] = divide_by_pivot(list, pivot)

list1 = [];
list2 = [];
for val = list
    if val < pivot
        list1 = [list1, val];
    else
        list2 = [list2, val];
    end
end

end

