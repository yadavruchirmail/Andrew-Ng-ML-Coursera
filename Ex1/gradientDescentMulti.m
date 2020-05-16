function [theta, J_history] = gradientDescentMulti(X_norm, y_norm, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
 % number of training examples
J_history = zeros(num_iters, 1);

m = size(X_norm,1);
for iter = 1:num_iters 

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %




h=X_norm*theta;
theta=theta-(alpha/m)*((h-y_norm)'*X_norm)' ;







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X_norm, y_norm, theta);

end

end
