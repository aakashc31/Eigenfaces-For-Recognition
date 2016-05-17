function C = kMeansRestarts(k, A)
	[C, distortion] = kMeans(k,A);
	for i = 1:15
		[currC, currD] = kMeans(k,A);
		if currD < distortion
			distortion = currD;
			C = currC;
        end
        disp(distortion);
	end
end
