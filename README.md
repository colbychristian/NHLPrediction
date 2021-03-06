# NHLPrediction
A simple program in Octave to estimate winner of Stanley Cup Finals

predicted winner so far: Tampa Bay Lightning

model uses past historical NHL statistics by team from 1976 to 2020 to predict 2021 winner.

input data can be updated from NHL.com/stats

parameters used in historical training data are only included if they can be logically called on at any point of the current season (e.g. power play percentage)

output is a the predicted winner by row of the input data and percentages that can be matched up to each team.

this code is for my own learning purposes.

to do: learn how to extract winner and list of teams (strings) from data.
