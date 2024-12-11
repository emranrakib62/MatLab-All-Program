clc ;
clear;
close all;
f=@(x)x.^2; 
a=input('Enter the lower limit:');
b=input('Enter the upper limit:');
n = input('Enter the number of subintervals:');
if mod(n,3)~=0
 error('Number of subintervals must be a multiple of 3 for Simpsons 3/8 Rule');
end
h=(b-a)/n;
sum_odd=0;
sum_even=0;
for i=1:n-1
 x=a+i*h; 
 if mod(i,3)==0
 sum_even=sum_even+f(x); 
 else
 sum_odd=sum_odd+f(x); 
 end
end
result=(3*h/8)*(f(a)+3*sum_odd+2* sum_even + f(b));
fprintf('The approximate value of the integral is:%.6f\n',result);