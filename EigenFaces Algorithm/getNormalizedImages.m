%returns a matrix mat, whose i'th column is phi(i) as described in the
%paper.
function [mat, alpha] = normalizeImages()
    imageLoc = readImageLoc();
    ss = size(imageLoc);
    n = ss(1);
    sum = zeros(286,384,'uint8');
    for i = 1:n
        name = imageLoc(i,:);
        A = imread(name,'pgm');
        A = uint8(A);
        sum = sum + A;
    end
    avg = uint8(sum / n);
    alpha = avg(:);
    mat = [];
    for i = 1:n
        name = imageLoc(i,:);
        A = imread(name, 'pgm');
        C = A(:);
        C = C - alpha;
        mat = [mat; C'];
    end
    mat = mat';
end
        
    
        