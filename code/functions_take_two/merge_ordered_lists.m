function res = merge_ordered_lists(list1, list2)

res = [];
idx1 = 1;
idx2 = 1;

while idx1 <= length(list1) && idx2 <= length(list2)
    if list1(idx1) < list2(idx2)
        res = [res, list1(idx1)];
        idx1 = idx1 + 1;
    else
        res = [res, list2(idx2)];
        idx2 = idx2 + 1;
    end
end

while idx1 <= length(list1)
    res = [res, list1(idx1)];
    idx1 = idx1 + 1;
end

while idx2 <= length(list2)
    res = [res, list2(idx2)];
    idx2 = idx2 + 1;
end

end