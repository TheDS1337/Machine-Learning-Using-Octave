function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers
%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).
%

n = size(yval);

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

stepsize = (max(pval) - min(pval)) / 1000;
for epsilon = min(pval):stepsize:max(pval)
    
    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the F1 score of choosing epsilon as the
    %               threshold and place the value in F1. The code at the
    %               end of the loop will compare the F1 score for this
    %               choice of epsilon and set it to be the best epsilon if
    %               it is better than the current choice of epsilon.
    %               
    % Note: You can use predictions = (pval < epsilon) to get a binary vector
    %       of 0's and 1's of the outlier predictions

    predictions = (pval < epsilon);
    true_predictions = predictions == yval;

    true_positives = 0;
    true_negatives = 0;
    false_positives = 0;
    false_negatives = 0;

    for i = 1:n
        if true_predictions(i) == 1
            if yval(i) == 1
                true_positives = true_positives + 1;
            else
                true_negatives = true_negatives + 1;
            end                
        else
            if yval(i) == 1
                false_positives = false_positives + 1;
            else
                false_negatives = false_negatives + 1;
            end               
        end
    end

    precision = true_positives / (true_positives + false_positives);
    recall = true_positives / (true_positives + false_negatives);

    F1 = 2 * precision * recall / (precision + recall);

    % =============================================================

    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
