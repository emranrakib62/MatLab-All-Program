clc;
clear;
close all;
x=(pi:0.01:2*pi);
y=sin(x);
g=cos(x);
plot(x,y);
hold on;
plot(x,g);
title('Sine and Cosine Functions');
legend('sin(x)', 'cos(x)');

