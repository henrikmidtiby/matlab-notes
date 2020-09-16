function [min_dist_idx, min_distance] = ...
    locate_nearest_point(input_list, query_point)

min_dist_idx = -1;
min_distance = 100000000;

for idx = 1:size(input_list, 1)
    point = input_list(idx, :);
    difference = point - query_point;
    distance = norm(difference);
    if distance < min_distance
        min_dist_idx = idx;
        min_distance = distance;
    end
end

end

