% Define the function
f = @(x) x^3 - 6*x^2 + 11*x - 6; % Example: f(x) = x^3 - 6x^2 + 11x – 6
% f = @(variable) expression;
% Interval [a, b]
a = 1; % Lower bound of the interval
b = 3; % Upper bound of the interval
% Tolerance and maximum iterations
tol = 1e-6; % Tolerance for stopping criterion
max_iter = 100; % Maximum number of iterations
% Check if the initial interval is valid
f(1) % Evaluates f(1) = 1^3 - 6*1^2 + 11*1 - 6
if f(a) * f(b) > 0
 error('f(a) and f(b) must have opposite signs. Please provide a valid interval.');
end
% Bisection Method Iteration
fprintf('Bisection Method:\n');
fprintf('Iteration\t a\t\t b\t\t c\t\t f(c)\n');
for i = 1:max_iter
 c = (a + b) / 2; % Midpoint
 f_c = f(c); % Evaluate f(c)
 
 fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\n', i, a, b, c, f_c);
 
 if abs(f_c) < tol || (b - a) / 2 < tol % Check for convergence
 fprintf('\nRoot found: %.6f\n', c);
 break;
 end
 
 % Update the interval
 if f(a) * f_c < 0
 b = c;
 else
 a = c;
 end
end
if i == max_iter
 fprintf('\nMethod did not converge within the maximum number of iterations.\n');
end
