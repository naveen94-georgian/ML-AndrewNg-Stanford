function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);
hl = size(Theta1 ,1);
X = [ones(m, 1) X];
a2 = zeros(m,hl);
%fprintf('hl = %d',hl);
for i=1:hl,
	theta_t1 = Theta1(i,:);
	theta_t1 = theta_t1(:);
	a2(:,i) = sigmoid(X * theta_t1);
end;
a2 = [ones(m, 1) a2];
a3 = zeros(m, num_labels);
for i = 1: num_labels,
	theta_t2 = Theta2(i,:);
	theta_t2 = theta_t2(:);
	a3(:,i) = sigmoid(a2 * theta_t2);
end;
%fprintf('row = %d',size(a3,1));
[x,ix] = max(a3,[],2);

%a3(1:10)
	
p = ix;


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









% =========================================================================


end
