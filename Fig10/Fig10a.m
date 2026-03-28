clc;clear all;close all;
A=readmatrix("Mean_GK_Residuals.csv");
B=readmatrix("MAF_GK_Residuals.csv");
C=readmatrix("PCA_GK_Residuals.csv");

%figure('Position',[680,261,560,617]);
tiledlayout(2,3,'TileSpacing','tight','Padding','tight');
nexttile;
plot(A(:,1),A(:,2));hold on;
plot(A(:,1),A(:,5),'Color','r','LineWidth',2);hold on;
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({});
ylabel('Mean Data');
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',11,'tickdir','out');
ylim([1000 1600]);
yticks([1000 1300  1600]);yticklabels({'1000','1300', '1600'});
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;


nexttile;
plot(B(:,1),B(:,2));hold on;
plot(B(:,1),B(:,5),'Color','r','LineWidth',2);hold on;
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({});
ylabel('MAF1 Data');
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',11,'tickdir','out');
ylim([-2 3]);
yticks([-2 0 3]);yticklabels({'-2','0', '3'});
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;


nexttile;
plot(C(:,1),C(:,2));hold on;
plot(C(:,1),C(:,5),'Color','r','LineWidth',2);hold on;
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({});
ylabel('PCA1 Data');
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',11,'tickdir','out');
ylim([-4 6]);
yticks([-4 0 6]);yticklabels({'-4','0', '6'});
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;

nexttile;
bar(A(:,1),A(:,3),'ShowBaseLine','off','EdgeColor','k','LineWidth',1,'BarWidth',0.01);
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({'0', '3', '6', '9.1'});
ylabel('Mean Residuals');
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',11,'tickdir','out');
ylim([-200 100]);
yticks([-200 0 100]);yticklabels({'-200','0', '100'});
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;
xlabel('Time')

nexttile;
bar(B(:,1),B(:,3),'ShowBaseLine','off','EdgeColor','k','LineWidth',1,'BarWidth',0.01);
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({'0', '3', '6', '9.1'});
ylabel('MAF Residuals');
xlabel('Time')
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',11,'tickdir','out');
ylim([-1 1.5]);
yticks([-1 0 1.5]);yticklabels({'-1','0', '1.5'});
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;


nexttile;
bar(C(:,1),C(:,3),'ShowBaseLine','off','EdgeColor','k','LineWidth',1,'BarWidth',0.01);
xlim([0 910]);
xticks([0 300 600 910]);xticklabels({'0', '3', '6', '9.1'});
ylabel('PCA Residuals');
xlabel('Time')
set(gca,'Linewidth',1.5,'Fontweight', 'bold','Fontsize',11,'tickdir','out');
ylim([-2 3]);
yticks([-2 0 3]);yticklabels({'-2','0', '3'});
ax=gca;ax.XAxis.Color='k';ax.YAxis.Color='k';
grid on;
ax.GridLineWidth = 1;



%xticklabels({'0', '3', '6', '9.1'});
