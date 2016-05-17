function match = findClosestMatch(path, eigFac, avg, Omega)
    omega = computeProjectionInEigenFaces(eigFac,avg,path);
    omega = omega';
    match = 0;
    difference = Inf;
    ss = size(Omega);
    m = ss(1);
    for i = 1:m
        currDiff = norm(omega - Omega(i,:));
        if currDiff < difference
            difference = currDiff;
            match = i;
        end
    end
    match = match - 1;
    X = imread(path);
end