clc;
clear;
close all;


a = input('Enter the first number: ');
b = input('Enter the second number: ');


a = a + b;  
b = a - b;  
a = a - b;  


fprintf('After Swapping:\n');
fprintf('a = %.2f\n', a);
fprintf('b = %.2f\n', b);
