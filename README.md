Update:21-06-29

Added SVM Classifier written in Jupyter Notebook

Model gives highest chances of winning to Colorado Avalanche, which seems less accurate given this year's NHL playoff results; however, it is interesting to note that it gives Montreal Canadiens the 4th highest chance, while the Gradient Descent model had them in the 11th position (Montreal being the surprise winner of NHL semi-finals. The model also seemed to improve predictions for other teams as well. Predictions are also more realistic than the gradient descent model, with percentages ranging from 0-6% instead of 0-40%.

Lingering issue: scaling the data resulted in all exmaples having the same probability. The model uses unscaled data, which is not best practice, but gives seemingly meaningful results.

# NHLPrediction
A simple program in Octave to estimate winner of Stanley Cup Finals

Predicted winner so far (using gradient descent): Tampa Bay Lightning

model uses past historical NHL statistics by team from 1976 to 2020 to predict 2021 winner.

input data can be updated from NHL.com/stats

parameters used in historical training data are only included if they can be logically called on at any point of the current season (e.g. power play percentage)

output is a the predicted winner by row of the input data and percentages that can be matched up to each team.

this code is for my own learning purposes.

to do: learn how to extract winner and list of teams (strings) from data.
