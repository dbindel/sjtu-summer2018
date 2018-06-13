% Demonstration of overfitting in a polynomial regression problem.
% We approximate sin(6x) by sum c_j T_j(x) where T_j(x) are the
% Chebyshev polynomials, and determine the coefficients by a least
% squares fit with noise.

m = 12;      % Number of data points
n = 12;      % Number of expansion terms
sig = 1e-4;  % Noise level

% Set up interpolation and test points
x  = 2*rand(m,1)-1;
xt = linspace(-1,1,400)';

% Function values
fx  = sin(6*x);
fxt = sin(6*xt);
fxe = fx + sig*randn(m,1);

% Evaluate Chebyshev polynomials at points x and fit
A = chebmatrix(x, n);
c = A\fxe;

% Predict at test grid xt
At = chebmatrix(xt,n);
fxt_pred = At*c;

% Show the norm of the test error
test_err = fxt-fxt_pred;
fprintf('Test error: %e\n', norm(test_err));

% Plot data
figure(1); plot(x, fxe, '*', xt, fxt, '-', xt, At*c, '--');
figure(2); semilogy(x, abs(fxe-fx), '*', xt, abs(fxt-At*c));