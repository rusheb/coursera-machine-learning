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

%possible_values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%pred_error = zeros(length(possible_values));
%for i = 1:length(possible_values)
%  for j = 1:length(possible_values)
%    V = [possible_values(i), possible_values(j)];
%    fprintf("next")
%    disp(V)
%    C = possible_values(i);
%    sigma = possible_values(j);
%    model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%    predictions = svmPredict(model, Xval);
%    pred_error(i, j) = mean(double(predictions ~= yval));
%    disp(pred_error)
%  end
%end
%
%min_pred_error = min(pred_error(:));
%[min_i, min_j] = find(pred_error==min_pred_error);
%
%C = possible_values(min_i);
%sigma = possible_values(min_j);

% =========================================================================

end
