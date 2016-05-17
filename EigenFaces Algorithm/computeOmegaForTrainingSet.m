function Omega = computeOmegaForTrainingSet(eigFac, avg)
    imageLoc = readImageLoc();
    ss = size(imageLoc);
    Omega = [];
    for i = 1:ss(1)
        curr = computeProjectionInEigenFaces(eigFac, avg, imageLoc(i,:));
        Omega = [Omega ; curr'];
    end 
end
