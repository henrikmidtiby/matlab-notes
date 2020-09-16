function [list1, list2] = divide_by_pivot3(list, pivot)

x1 = [];
x2 = [];

n = length(list);
for i = 1:n
    if(list(i) < pivot)
        x1 = [x1, list(i)];
    else
        x2 = [x2, list(i)];
    end
end
list1 = x1;
list2 = x2;
end

