function res = return_every_third_element(list)

res = [];
for k = 1:length(list)
    if(mod(k, 3) == 0)
        res = [res, list(k)];
    end
end

end

