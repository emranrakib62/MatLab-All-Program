clc
clear
close all;
x=linspace(-4*pi,2*pi);
y=linspace(0,4*pi);
[X,Y]=meshgrid(x,y);
Z=sin(X)+cos(Y);
contour(X,Y,Z);