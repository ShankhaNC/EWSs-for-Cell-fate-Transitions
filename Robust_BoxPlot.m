% Shankha Narayan Chattopadhyay

clc;clear all;close all;

ND=readmatrix('AA_Forward_Robust_ND.xlsx');
GK=readmatrix('AA_Forward_Robust_GK.xlsx');
Lo=readmatrix('AA_Forward_Robust_Loess.xlsx');
Lin=readmatrix('AA_Forward_Robust_Linear.xlsx');
FD=readmatrix('AA_Forward_Robust_FD.xlsx');

meanar = [ND(:,1), GK(:,1), Lo(:,1), Lin(:,1), FD(:,1)];
maxar = [ND(:,2), GK(:,2), Lo(:,2), Lin(:,2), FD(:,2)];
meansd = [ND(:,3), GK(:,3), Lo(:,3), Lin(:,3), FD(:,3)];
maxsd = [ND(:,4), GK(:,4), Lo(:,4), Lin(:,4), FD(:,4)];
eigenmaf = [ND(:,5), GK(:,5), Lo(:,5), Lin(:,5), FD(:,5)];
mafar = [ND(:,6), GK(:,6), Lo(:,6), Lin(:,6), FD(:,6)];
mafsd = [ND(:,7), GK(:,7), Lo(:,7), Lin(:,7), FD(:,7)];
pcaar = [ND(:,8), GK(:,8), Lo(:,8), Lin(:,8), FD(:,8)];
pcasd = [ND(:,9), GK(:,9), Lo(:,9), Lin(:,9), FD(:,9)];
eigencov = [ND(:,10), GK(:,10), Lo(:,10), Lin(:,10), FD(:,10)];
maxcov = [ND(:,11), GK(:,11), Lo(:,11), Lin(:,11), FD(:,11)];
mutinfo = [ND(:,12), GK(:,12), Lo(:,12), Lin(:,12), FD(:,12)];

%One example for the robustness of Fig 6 say for example for the metric meanar 
boxplot(meanar)