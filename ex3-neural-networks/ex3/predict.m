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

% add bias column to X
a1 = [ones(m, 1) X];
% calculate hidden layer, size: (25 "features" x 5000 examples)
z2 = Theta1 * a1';
% since we aren't going to transpose it, add a bias *row*
a2 = [ones(1, m); sigmoid(z2)];
% calculate output layer, size: (10 probabilities x 5000 examples)
z3 = Theta2 * a2;
a3 = sigmoid(z3);
% get the index of the highest probabilty in each column
[_, p] = max(a3);

% =========================================================================


end
