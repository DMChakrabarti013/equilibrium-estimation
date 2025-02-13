% D. Malhar Chakrabarti
% Problem Set 3
% Exercise 3

% 3a. The parameter of interest that summarizes the demand elasticity is b.

% 3b. See solution file.

% 3c.
% loading .mat file
load("ps3_data.mat")

alpha = (elecp'*elecp)\(elecp'*q);
beta = (elecp'*elecp)\(elecp'*pcars);

elasticity = alpha/beta