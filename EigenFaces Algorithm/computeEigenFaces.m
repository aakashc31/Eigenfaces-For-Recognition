function [eigFac,avg] = computeEigenFaces()
    [A, avg] = getNormalizedImages();
    A = double(A);
    ss = size(A);
    m = ss(2); % number of images
    n = ss(1); % dimension of image space
    L = A' * A;
    [eigVec, eigVal] = eig(L); 
    U = [];
    for l = 1:m
        u = zeros(n,1);
        for k = 1:m
            u = u + eigVec(k,l) * A(:,k);
        end
        U = [U u];
    end
    saveEigenFaces(U, eigVal);
    eigFac = U(:,45:50); % only last 6
end