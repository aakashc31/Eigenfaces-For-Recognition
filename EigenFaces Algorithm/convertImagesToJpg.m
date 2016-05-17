function convertImagesToJpg()
    imageLoc = readImageLoc();
    ss = size(imageLoc);
    n = ss(1);
    for i = 1:n
        name = imageLoc(i,:);
        A = imread(name,'pgm');
        h = figure;
        name = num2str(i-1);
        fname = strcat('D:\Semester 8\Numerical Algorithms\Assignment 2b\ConvertedImages\',  name);
        imshow(A);
        saveas(h,fname,'jpg');
    end
end
