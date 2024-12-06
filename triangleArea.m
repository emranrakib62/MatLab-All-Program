clc;
clear;
close all;


a = input('Enter the length of side a: ');
b = input('Enter the length of side b: ');
c = input('Enter the length of side c: ');


if (a + b > c) && (a + c > b) && (b + c > a)
  
    s = (a + b + c) / 2;
    
   
    area = sqrt(s * (s - a) * (s - b) * (s - c));
   
  
    fprintf('The area of the triangle is: %.2f\n', area);
else
 
    fprintf('The given sides do not form a valid triangle.\n');
end
