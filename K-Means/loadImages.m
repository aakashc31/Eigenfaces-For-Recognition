function [mat, imgDim] = loadImages()
    path = 'D:\Semester 8\Numerical Algorithms\Assignment 2b\BioID-FaceDatabase-V1.2\';
    imageLoc = readImageLoc(path);
    ss = size(imageLoc);
    n = ss(1);
    mat = [];
    for i = 1:n
        name = imageLoc(i,:)
        A = imread(name, 'pgm');
        imgDim = size(A);
        C = A(:);
        mat = [mat; C'];
    end
    mat = double(mat);
end

function ImageLoc = readImageLoc(path)
    ImageLoc = [];
    x = dir(path);
    for i = 3:length(x)
        name = mat2str(x(i).name);
        l = length(name);
        name = name(2:l-1);
        st = strcat(path,name);
        ImageLoc = [ImageLoc;st];
    end
end