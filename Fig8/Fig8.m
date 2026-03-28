clc
clear all
close all
A= readmatrix('Forward_uniJI_N_Traj1.csv');
B = readmatrix('Forward_uniJI_D_Traj1.csv');
C = readmatrix('Forward_uniJI_I_Traj1.csv');
D = readmatrix('Forward_uniJI_Mean_Traj1.csv');
E = readmatrix('Forward_multiJI_Scaled_Traj1.csv');
F = readmatrix('Forward_multiJI_Unscaled_Traj1.csv');
figure('Position',[555,341,714,563]);
tiledlayout(2,3,"TileSpacing","compact");

nexttile;
plot(A(:,1),A(:,2),'LineWidth',2.75, 'Color',[0.01, 0.75, 0.24]);hold on;
set(gca,'Tickdir', 'out', 'Linewidth',1.5,'Fontweight', 'bold', 'Fontsize',12);
xlim([475, 950]);ylim([0 0.9]);
xticks([475 950]);
xticklabels({});
ylabel('N-uniji')

nexttile;
plot(B(:,1),B(:,2),'LineWidth',2.75, 'Color',[0, 0.44, 1]);
set(gca,'Tickdir', 'out', 'Linewidth',1.5,'Fontweight', 'bold', 'Fontsize',12);
xlim([475, 950]);ylim([0.4 1]);
xticks([475 950]);
xticklabels({});
ylabel('D-uniji')

nexttile;
plot(C(:,1),C(:,2),'LineWidth',2.75, 'Color',[1,0,0.5]);
set(gca,'Tickdir', 'out', 'Linewidth',1.5,'Fontweight', 'bold', 'Fontsize',12);
xlim([475, 950]);ylim([0.9 1]);
xticks([475 950]);
xticklabels({});
ylabel('I-uniji')

nexttile;
plot((A(:,1)+B(:,1)+C(:,1))/3,(A(:,2)+B(:,2)+C(:,2))/3,'LineWidth',2.75, 'Color',[0.58, 0.0, 0.83]);
set(gca,'Tickdir', 'out', 'Linewidth',1.5,'Fontweight', 'bold', 'Fontsize',12);
xlim([475, 950]);ylim([0.4 1]);
xticks([475 950]);
xticklabels({'4.55', '9.1'});
ylabel('Mean-uniji');xlabel('Time');

nexttile;
plot(E(:,1),E(:,2),'LineWidth',2.75, 'Color',[1.0, 0.66, 0.07]);
set(gca,'Tickdir', 'out', 'Linewidth',1.5,'Fontweight', 'bold', 'Fontsize',12);
xlim([475, 950]);ylim([0.94 0.98]);
xticks([475 950]);
xticklabels({'4.55', '9.1'});
ylabel('Unscaled-multiji');xlabel('Time');



nexttile;
plot(F(:,1),F(:,2),'LineWidth',2.75, 'Color',[0.57, 0.36, 0.51]);
set(gca,'Tickdir', 'out', 'Linewidth',1.5,'Fontweight', 'bold', 'Fontsize',12);
xlim([475, 950]);ylim([0.94 0.98]);
xticks([475 950]);
xticklabels({'4.55', '9.1'});
ylabel('Scaled-multiji');xlabel('Time');
