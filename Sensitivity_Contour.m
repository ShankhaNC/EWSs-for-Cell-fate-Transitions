clc;
clear all;
close all;
A=readmatrix('Sensitivity_Data_MVI.csv');hold on;
A=reshape(A,26,36);colorbar;
contourf(A,200,'Linecolor','non');
colormap(jet(50));
clim([0 1]);
contour(A,'Linecolor','k');