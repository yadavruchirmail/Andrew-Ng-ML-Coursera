
% You need to set these values correctly
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu=mean(X);
sigma=std(X);
X(:,1)=(X(:,1)-mu(:,1))/(sigma(:,1))
X(:,2)=(X(:,2)-mu(:,2))/(sigma(:,2))

X_norm = X;