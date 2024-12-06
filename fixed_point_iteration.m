clc ;
clear;
close all;
g = @(x) (x + 1)^(1/3); % Example: f(x) = x^3 - x - 1, rearranged to x = (x + 1)^(1/3)
x0 = 1.5; 
tol = 0.0001; 
max_iter = 100; 
fprintf('Fixed-Point Iteration Method:\n');
fprintf('Iteration\t x\t\t g(x)\n');
for i = 1:max_iter
 x1 = g(x0); 
 fprintf('%d\t\t %.6f\t %.6f\n', i, x0, x1);
 if abs(x1 - x0) < tol 
 fprintf('\nRoot found: %.6f\n', x1);
 break;
 end

 x0 = x1; 
end
if i == max_iter
 fprintf('\nMethod did not converge within the maximum number of iterations.\n');
end
