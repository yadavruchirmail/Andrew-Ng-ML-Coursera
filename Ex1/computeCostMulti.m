function J_history = computeCostMulti(X_norm, y_norm, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values


% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

m=size(X_norm,1);
pred=X_norm*theta;
sqrerror=(pred-y_norm).^2;
J_history=1/(2*m)*sum(sqrerror);



% =========================================================================

end
