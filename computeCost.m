function [J, grad] = computeCost(X, y, theta, lambda)
  
  h = sigmoid(X * theta);
  m = length(y);
  
  grad = zeros(size(theta));
  
  J = (1/m) * ((-y' * log(h)) - ((1 - y)' * log(1 - h))) + ((lambda / (2 * m)) * sum(theta(2 : end).^2));
  
  grad(1) = (1 / m) * ((X(: , 1))' * (h - y));
  
  grad(2 : end) = ((lambda / m) * theta(2 : end)) + ((1 / m) * (X'(2 : end, :) * (h - y)));
  
  end