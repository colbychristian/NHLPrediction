function p = predict(theta, currentX)
  
  m = size(currentX, 1);
  
  p = zeros(m , 1);
  
  h = sigmoid(currentX * theta)
  
  [maxval , p] = max(h);

end
