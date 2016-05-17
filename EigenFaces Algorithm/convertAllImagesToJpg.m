function ImageLoc = readImageLoc()
    ImageLoc = [];
    path = 'D:\Semester 8\Numerical Algorithms\Assignment 2b\BioID-FaceDatabase-V1.2\';
    expPath = 'D:\Semester 8\Numerical Algorithms\Assignment 2b\BioID-Jpg\';
    x = dir(path);
    for i = 3:length(x)
        name = mat2str(x(i).name);
        l = length(name);
        st = strcat(path,name(2:l-1));
        expTo = strcat(expPath, num2str(i-3),'.jpg');
        imwrite(imread(st,'pgm'),expTo);
    end
end