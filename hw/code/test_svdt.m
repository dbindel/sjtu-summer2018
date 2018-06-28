m = 1000;
n = 500;
k = 5;
d = 0.2;
lambda = 10;

U = rand(m,k);
V = rand(n,k);
I = find(rand(m,n) < d);
A = U*V';
PA = A(I);

M = rand(m,k) * rand(n,k)';
err = zeros(100,1);
for j = 1:100
  err(j) = norm(M(I)-PA)/norm(PA);
  
  % Take a step of the thresholded SVD iteration with threshold lambda.

end
plot(err)
