function omega = computeProjectionInEigenFaces(eigFac, avg, path)
    A = imread(path,'pgm');
    A = uint8(A);
    A = A(:);
    A = A - avg;
    A = double(A);
    omega = [];
    ss = size(eigFac);
    dim = ss(2);
    for i = 1:dim
        curr = eigFac(:,i)' * A;
        omega = [omega; curr];
    end
end

    