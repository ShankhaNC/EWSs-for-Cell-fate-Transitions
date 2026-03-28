clc;clear all;close all;
A=readmatrix('MVI_Robust.xlsx');

boxplot(A);
ylim([-1 1]);