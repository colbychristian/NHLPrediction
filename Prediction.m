

%clearing stuff

clear; close all; clc

%printing a message

fprintf('Running Prediction');

%loading NHL data

data = load('teamHistoricalStats3.txt');
currentData = load('currentData.txt')

%initializing variables
X = data(: , 3 : (end - 1));
y = data(: , end);
m = length(y);
n = columns(X)
theta = zeros(n , 1);
lambda = 0.01

currentX = currentData(: , 3 : end)

%Plotting data

%plotData(X, y)

%calculate Cost Function and Grandient

[J, grad] = computeCost(X, y, theta, lambda)

%initialize Theta

initial_theta = zeros(size(X , 2), 1);

%setting options for fminunc

options = optimset('GradObj', 'on', 'MaxIter', 1000);

%optimize

[theta, J, exit_flag] = fminunc(@(t)(computeCost(X, y, t, lambda)), initial_theta, options);

%make predictions

p = predict(theta, currentX)

%fetch winner


