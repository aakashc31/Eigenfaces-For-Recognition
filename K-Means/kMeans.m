% k is the number of clusters
% A is the data. Every row represents a point
function [C, distortion] = kMeans(k, A)
	epsilon = 0.1;
	ss = size(A);
	m = ss(1); % number of data points
	n = ss(2); % dimension of data points
	x = randperm(m,k); % select k random numbers from 1 to m. These will be initial centroids
	mu = [];
	for i = 1:k
		mu = [mu; A(x(i),:)];
	end
	C = zeros(m,1);
	iter = 1; distortion = 0;
	while iter < 51
		currDistortion = 0;
		for i = 1:m
			asgn = 0; dist = Inf;
			for j = 1:k
				currDist = norm(mu(j,:) - A(i,:));
				if currDist < dist
					dist = currDist;
					asgn = j;
				end
			end
			C(i) = asgn;
			currDistortion = currDistortion + dist;
		end

		if iter < 2
			distortion = currDistortion;
		else
			del = abs(distortion - currDistortion);
			distortion = currDistortion;
			if del < epsilon
				break
			end
		end

		count = zeros(k,1);
		mu = zeros(k,n);
		for i = 1:m
			count(C(i)) = count(C(i)) + 1;
			mu(C(i),:) = mu(C(i),:) + A(i,:);
		end
		for i = 1:k
			mu(i,:) = mu(i,:)/count(i);
		end
		iter = iter + 1
	end
end