function [xr1linear] = xxlinear(xr1,factor)
n1 = 0:length(xr1)-1;
tti = linspace(0,n1(end),length(n1)*factor);
xr1linear = interp1(n1,xr1,tti); %-- function is INTERP-ONE stem(tti,xr1linear)
end
