function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

for j = 1:m

    x = [1 X(j, :)];

    a_2 = zeros(1, size(Theta1, 1));
    for i = 1:size(Theta1, 1)
        theta_1 = Theta1(i, :);
        a_2(i) = sigmoid(theta_1 * x');
    end

    a_2_new = [1 a_2];

    for i = 1:num_labels
        theta_2 = Theta2(i, :);
        a_3(i) = sigmoid(theta_2 * a_2_new');
    end

    mx = max(a_3);

    for i = 1:num_labels       
        if a_3(i) == mx
            p(j) = i;
            break;
        end      
    end    
end





% =========================================================================


end
