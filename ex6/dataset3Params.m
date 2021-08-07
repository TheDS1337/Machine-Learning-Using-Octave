function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% C_sigma_vec = [0.01 0.03 0.1 0.3 1 3 10 30]';
% q = size(C_sigma_vec);

% error_vec = zeros(q, q);

% for i = 1:q
%     for j = 1:q
%         model = svmTrain(X, y, C_sigma_vec(i), @(x1, x2) gaussianKernel(x1, x2, C_sigma_vec(j)));
%         predictions = svmPredict(model, Xval);

%         error_vec(i, j) = mean(double(predictions ~= yval));
%     end
% end

% minErr = min(error_vec(:));
% [i, j] = find(error_vec == minErr);

% C = C_sigma_vec(i); (= 1.0)
% sigma = C_sigma_vec(j); (= 0.1)

% =========================================================================

end
