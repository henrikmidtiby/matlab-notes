function res = distance_matrix(list_of_points)

[s1, s2] = size(list_of_points);
res = zeros(s1, s1);

for idx1 = 1:s1
    for idx2 = 1:s1
        p1 = list_of_points(idx1, :);
        p2 = list_of_points(idx2, :);
        difference = p1 - p2;
        distance = norm(difference);
        res(idx1, idx2) = distance;
    end
end

end

