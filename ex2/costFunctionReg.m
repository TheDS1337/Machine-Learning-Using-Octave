function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
grad = zeros(size(theta));

% You need to return the following variables correctly 
for j = 1:m
    z = X(j, :);  

    J = J - ((1 - y(j)) * log(1 - sigmoid(z * theta)) + y(j) * log(sigmoid(z * theta))) / m;
    grad = grad + (sigmoid(z * theta) - y(j)) * z' / m;
end

    J = J + 0.5 * lambda * (theta' * theta - theta(1) ^ 2) / m;

    grad_zero = grad(1);

    grad = grad + lambda * theta / m;
    grad(1) = grad_zero;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
