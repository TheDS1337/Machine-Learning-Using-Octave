function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

m = size(X, 1);
n = size(X, 2);

x = zeros(1, n);
centroid = zeros(1, n);
dist = zeros(K, 1);
disp = zeros(K, n);

for i = 1:m
    x = X(i, :);

    for k = 1:K
        centroid = centroids(k, :);
        disp(k, :) = x - centroid;
        dist(k) = disp(k, :) * disp(k, :)';        
    end

    minDist = min(dist);

    for k = 1:K
        if dist(k) == minDist
            idx(i) = k;
        end     
    end
end

% =============================================================

end