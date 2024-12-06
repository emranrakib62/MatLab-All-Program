
clc;
clear;
close all;
f = @(x) x^3 - 2*x-5;
a = 2; 
b = 3; 

tol = 1e-6; 
max_iter = 100; 

if f(a) * f(b) > 0
 error('f(a) and f(b) must have opposite signs. Please provide a valid interval.');
end

fprintf('False-Position Method:\n');
fprintf('Iteration\t a\t\t b\t\t c\t\t f(c)\n');
for i = 1:max_iter

 c = b - (f(b) * (b - a)) / (f(b) - f(a));
 f_c = f(c); 
 
 fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\n', i, a, b, c, f_c);
 
 if abs(f_c) < tol
 fprintf('\nRoot found: %.6f\n', c);
 break;
 end
 
 
 if f(a) * f_c < 0
 b = c;
 else
 a = c;
 end
end
if i == max_iter
 fprintf('\nMethod did not converge within the maximum number of iterations.\n');
end
