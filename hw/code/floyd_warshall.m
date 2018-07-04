function [D] = floyd_warshall(W)

  n = length(W);

  % Initial shortest path
  I = find(W == 0);
  D = W;
  D(I) = inf;
  for k = 1:n
    D(k,k) = 0;
  end

  % Recurse on shortest paths involving intermediate vertices up to k
  for k = 1:n
    D
    D = min(D, D(:,k) + D(k,:));
  end
