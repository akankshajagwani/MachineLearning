function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
mu = mean(X);
mu1 = mu(1,1)*ones(size(X,1),1);
mu2 = mu(1,2)*ones(size(X,1),1);
sigma = std(X);
X_norm = [(X(:,1)-mu1)/sigma(1,1),(X(:,2)-mu2)/sigma(1,2)];
mean1 = mean(X_norm)
std1 = std(X_norm)
fprintf ('mean of normalized [%3.2f %3.2f] and std dev of norm [%3.2f %3.2f]',mean1,std1)
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









% ============================================================

end
