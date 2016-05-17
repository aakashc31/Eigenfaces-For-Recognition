function saveEigenFaces(efac, eigVal)
    eigVal = diag(eigVal);
    ss = size(efac);
    m = ss(2); % no of images
    n = ss(1); 
    for i = 1:6
        j = 51 - i; % take the 6 images with highest eigen value
        curr = mat2gray(efac(:,j));
        curr = reshape(curr, 286,384);
        name = num2str(i);
        fname = strcat('D:\Semester 8\Numerical Algorithms\Assignment 2b\ValidEigenFaces\',  name);
        h = figure;
        imshow(curr);
        saveas(h,fname,'jpg');
    end        
end
