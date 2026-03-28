clc;clear all;close all;
Data = readmatrix('Forward_MVI_Traj1.csv');

plot(Data(:,1),Data(:,2),'Color','b','LineWidth',2);