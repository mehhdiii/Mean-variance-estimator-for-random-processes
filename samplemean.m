function [meu] = samplemean(X)
N = length(X); 
meu = (1/N)*sum(X);
end

