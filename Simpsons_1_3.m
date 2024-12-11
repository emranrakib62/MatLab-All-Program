clc;
clear;
close all;
f=@(x) x.^2;

a=input("Enter the lower limit:");
b=input("Enter the upper limit:");
n=input("Enter the number of subintervals:");
if mod(n,2)~=0
    error('Number of subintervals must be even for simpsons 1/3 Rule');
end
h=(b-a)/n;

sum_odd=0;
sum_even=0;

for i=1:n-1
    x=a+i*h;
    if mod(i,2)==0
        sum_even=sum_even+f(x);
    else
        sum_odd=sum_odd+f(x);

    end
end
result=(h/3)*(f(a)+4*sum_odd+2*sum_even+f(b));

fprintf("The approximate value of the integral:%f\n",result);


