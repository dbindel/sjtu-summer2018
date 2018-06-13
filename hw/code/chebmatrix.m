% [Tx] = chebmatrix(x,n)
%
% Evaluate the first n Chebyshev polynomials (T_0 through T_{n-1}) at
% a set of points x.
%
function [Tx] = chebmatrix(x, n)

  x  = x(:);
  Tx = zeros(length(x), n);
  Tx(:,1) = 1;
  if n > 1, Tx(:,2) = x; end
  for k = 3:n
    Tx(:,k) = 2*x.*Tx(:,k-1) - Tx(:,k-2);
  end
