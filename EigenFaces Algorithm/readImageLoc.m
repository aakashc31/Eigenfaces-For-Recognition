function ImageLoc = readImageLoc()
    ImageLoc = [];
    path = 'D:\Semester 8\Numerical Algorithms\Assignment 2b\BioID-FaceDatabase-V1.2\';
    x = dir(path);
    for i = 3:52
        name = mat2str(x(i).name);
        l = length(name);
        name = name(2:l-1);
        st = strcat(path,name);
        ImageLoc = [ImageLoc;st];
    end
end