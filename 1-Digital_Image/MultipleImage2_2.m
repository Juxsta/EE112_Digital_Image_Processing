%%
clear;clc;close
first_img = load('lighthouse.mat')
show_img(first_img.ww)
%%
close;
second_img = load('detail.mat')
show_img(second_img.X)
%%
close;
third_img = load('earth.mat')
show_img(third_img.X)

