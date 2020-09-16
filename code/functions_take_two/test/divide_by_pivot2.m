function [list1, list2] = divide_by_pivot2(list, pivot)

idx = list < pivot;
list1 = list(idx);

idx = list >= pivot;
list2 = list(idx);

end

