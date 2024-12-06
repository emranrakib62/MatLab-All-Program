clc;
clear;
close all;

num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');

temp = num1;
num1 = num2;
num2 = temp;


fprintf('After swapping:\n');
fprintf('First number: %.2f\n', num1);
fprintf('Second number: %.2f\n', num2);
