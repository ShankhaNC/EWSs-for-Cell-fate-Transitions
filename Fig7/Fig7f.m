clc;clear all;close all;
A=readmatrix('Fisher_Information_Robust.xlsx');

boxplot(A);
ylim([-1 1]);