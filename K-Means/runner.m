function C = run()
    [A, imgDim] = loadImages();
    ss = size(A);
    k = 12;
    C = kMeansRestarts(k,A);
    for i = 1:ss(1)
        v = mat2gray(A(i,:)');
        curr = reshape(v, imgDim(1), imgDim(2));
        name = strcat('D:\Semester 8\Numerical Algorithms\Assignment 2b\K-Means\Clusters\', num2str(C(i)), '_', num2str(i),'.jpg');
        imwrite(curr, name);
    end
end
