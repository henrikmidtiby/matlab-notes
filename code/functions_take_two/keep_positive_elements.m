function list = keep_positive_elements(input_list)

list = [];
for val = input_list
    if val > 0
        list = [list, val];
    end
end

end

