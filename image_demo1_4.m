clear;clc
ww=load('lighthouse.mat');
ww = ww.ww
% show_img(ww)
ww200 = ww(200,:);
wp = ww(1:2:end,1:2:end)
show_img(wp)
