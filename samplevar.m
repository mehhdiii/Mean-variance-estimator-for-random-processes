function [v] = samplevar(X)
N = length(X); 
meu = samplemean(X); 
v = (1/(N-1))*sum((X-meu).^2); 
end

