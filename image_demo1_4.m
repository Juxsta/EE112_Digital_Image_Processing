clear;clc
ww=load('lighthouse.mat');
ww = ww.ww
wp = @(p) ww(1:p:end,1:p:end)
show_img(wp(3))

