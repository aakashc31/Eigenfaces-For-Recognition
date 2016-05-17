function viewProjectedImage(path, eigFac, avg)
    omega = computeProjectionInEigenFaces(eigFac,avg,path);
    ss = size(eigFac);
    n = ss(1);
    m = ss(2);
    u = zeros(n,1);
    for i = 1:m
        u = u + omega(i)*eigFac(:,i);
    end
    u = mat2gray(u);
    u = reshape(u, 286,384);
    imshow(u);
end
