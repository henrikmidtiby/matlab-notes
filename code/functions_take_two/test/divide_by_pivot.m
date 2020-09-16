function [list1, list2] = divide_by_pivot(list, pivot)

x1 = [];
x2 = [];

n = length(list);
k = 0;
j = 0;
for i = 1:n
    if(list(i) < pivot)
        k = k + 1;
        x1(k) = list(i);
    else
        j = j + 1;
        x2(j) = list(i);
    end
end
list1 = x1;
list2 = x2;
end

