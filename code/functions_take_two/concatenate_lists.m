function res = concatenate_lists(list1, list2)

res = [];
idx = 1;
while idx <= length(list1)
    res = [res, list1(idx)];
    idx = idx + 1;
end

idx = 1;
while idx <= length(list2)
    res = [res, list2(idx)];
    idx = idx + 1;
end

end

