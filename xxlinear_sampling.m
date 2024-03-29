%% Downsampled image
clear;clc
ww=load('lighthouse.mat');
ww = ww.ww
wp = @(p) ww(1:p:end,1:p:end)
xx3 = wp(3)
show_img(xx3)
%%
xr1 = (-2).^(0:6);
L = length(xr1);
nn = ceil((0.999:1:5*L)/5) %<-- Round up to the integer part xr1hold = xr1(nn);
% interpolation factor of 4
subplot(2,1,1)
size_xr1 =( size(xr1))
length_xr1 = size_xr1(2)
xr1hold = xr1(nn)
plot(0:(length_xr1-1),xr1)
title('xr1')
subplot(2,1,2)
plot(0:(length(xr1hold)-1),xr1hold)
title('xr1hold')
%% 
xholdrows = []
wp3 = wp(3)
for (row = 1:(length(wp3(:,1))))
    row
    xholdrows(row,:) = xxlinear(wp3(row,:),3)
end
show_img(xholdrows)
%%
xholdcols = []
for (col = 1:(length(xholdrows)))
    xholdcols(:,col) = xxlinear(xholdrows(:,col)',3)
end
show_img(xholdcols)