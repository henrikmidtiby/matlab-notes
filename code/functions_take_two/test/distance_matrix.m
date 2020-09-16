function res = distance_matrix(list_of_points)

n = size(list_of_points, 1);
res = [];

for k = 1:n
    pointA = list_of_points(k, :);
    for kk = 1:n
        pointB = list_of_points(kk, :);
        difference = pointA - pointB;
        dist = norm(difference);
        res(k, kk) = dist;
    end
end

