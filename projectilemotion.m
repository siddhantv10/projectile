function [maxrange, maxheight, xhigh = projectilemotion(x0, y0, v0, iangle)

% Function that plots the path of a projectile
% [x, maxheight, xhigh] = projectilemotion(x0,y0,v0, iangle)
% 
%Inputs:
% * Initial Horizontal and Vertical position (x0,y0)
% * Initial velocity (v0)
% * Angle of projection in degrees (iangle)
% 
% Ouputs:
% * Max Range
% * Max Height
% * Horizontal location of the max height
% 
% Also see projectileMotionGUI

g = 9.81;
a = iangle*(pi / 180);  %degree to angle conversion

xm = (v0.^2)./g*sin(2*a);
xs = xm ./ 100;

x = x0: xs: xm;
y = (x*tan(a) - g/(2*(v0.^2)*(cos(a).^2))*x.^2) + y0;

for n = 1 :length(x)
    h = plot(x(n), y (n), 'b');
    set(h , 'Linewidth', 5);
    hold on;
    pause(0.00001);
end
zoom on;

maxheight = max(y);

maxpoint = find( y == max(y(:)));
xhigh = x(maxpoint);

h = plot( x(maxpoint), y(maxpoint), 'g');   %plots max height;
set(h, 'Markersize', 15);
hold on;

maxrange = xm;
end