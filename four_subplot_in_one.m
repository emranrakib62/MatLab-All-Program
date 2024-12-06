clc;          
clear;        
close all;    


x =(-10:0.01:10); 


subplot(2, 2, 1); 
y1 = x.^2;
plot(x, y1);
title('y = x^2');
xlabel('x axis');
ylabel('y axis');



subplot(2, 2, 2); 
y2 = sin(x);
plot(x, y2);
title('y = sin(x)');
xlabel('x axis');
ylabel('y axis');



subplot(2, 2, 3); 
y3 = cos(x);
plot(x, y3);
title('y = cos(x)');
xlabel('x axis');
ylabel('y axis');



subplot(2, 2, 4); 
y4 = tan(x);
plot(x, y4);
title('y = tan(x)');
xlabel('x axis');
ylabel('y axis');


