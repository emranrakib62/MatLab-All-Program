clc;
clear;
close all;

n=input('Enter the value of n:');
sum=0;
for i=1:n
    sum=sum+i*i;
end
disp("Sum of squre of n natural number is:"+sum);
