clear;clc;close
%% original code Vertical Bands
xpix = ones(1920,1)*cos(2*pi*(0:1079)*1/16);
show_img(xpix');
%% Vertical Scaled Bands
xpix = ones(400,1)*cos(2*pi*(0:400)/16);
show_img(xpix')