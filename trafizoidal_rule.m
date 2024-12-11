clc;
clear;
close all;
f=@(x) x.^2;
a=input('Enter the lower limit:');
b=input('Enter the upper limit:');
n=input('Enter the number of subintervals:');
if(n<0)
    error('Number of subintervals must be greater than 0:');
end
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
end
result=(h/2)*(f(a)+2*sum+f(b));
fprintf('The approximate of the integral is:%f\n',result);


















