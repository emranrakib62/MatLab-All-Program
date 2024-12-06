clc;          
clear;        
close all;    


[X, Y] = meshgrid(2:.100:11);
Z = sin(X) .* cos(Y);

mesh(X, Y, Z);

xlabel('x axis'); 
ylabel('y axis'); 
zlabel('z = sin(x)cos(y)'); 
title('Mesh Plot of z = sin(x)cos(y)');


