clc;close all;clear all;
A=readmatrix('Forward_MAF_Traj1.csv');
B=readmatrix('Forward_PCA_Traj1.csv');

figure('Position',[680,261,560,617]);
tiledlayout(2,1,'TileSpacing','tight','Padding','tight');

nexttile;
plot(A(:,1),'LineWidth',2);
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({});
ylabel('MAF Data');
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',18,'tickdir','out','box','off');
xline(910,'Color','k','Alpha',1,'LineWidth',1.5);
yline(3,'Color','k','Alpha',1,'LineWidth',1.5);
ylim([-2 3]);
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;

nexttile;
plot(B(:,1),'LineWidth',2);
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({'0', '3', '6', '9.1'});
ylabel('PCA Data');
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',18,'tickdir','out','box','off');
xline(910,'Color','k','Alpha',1,'LineWidth',1.5);
yline(6,'Color','k','Alpha',1,'LineWidth',1.5);
ylim([-4 6]);
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;
xlabel('Time');