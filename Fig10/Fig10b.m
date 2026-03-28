clc;
clear all;
close all;

u=readmatrix('Mean_EWSnet_ND_Pred_Data.csv');
v=readmatrix('Mean_EWSnet_GK_45_Pred_Data.csv');
w=readmatrix('MAF_EWSnet_ND_Pred_Data.csv');
x=readmatrix('MAF_EWSnet_GK_45_Pred_Data.csv');
y=readmatrix('PCA_EWSnet_ND_Pred_Data.csv');
z=readmatrix('PCA_EWSnet_GK_45_Pred_Data.csv');

figure('Position',[680,117,560,761]);
t=tiledlayout(3,2);
t.TileSpacing = 'compact';
t.Padding = 'compact';

nexttile;
plot(u(:,1),'o','LineWidth',2,'Color','g','MarkerSize',3);hold on;
plot(u(:,2),'-.','LineWidth',2,'Color','b','MarkerSize',6);hold on;
plot(u(:,3),'-','LineWidth',2,'Color','r');hold on;
grid on;
set(gca,'Linewidth',1.5,'GridLineWidth', 1, 'tickdir', 'out','Fontweight','bold','Fontsize',13,'XColor', 'k', 'YColor', 'k','box','off');
xlim([1 163]);ylim([0 1]);
xticks([1 41 81 121 163]);
xticklabels({});
yticks([0 0.2 0.4 0.6 0.8 1]);
yticklabels({'0','0.2', '0.4', '0.6', '0.8', '1'});
xline(163,'LineWidth',1.5,'Color','k','Alpha',1);yline(1,'LineWidth',1.5,'Color','k','Alpha',1);
legend('NT', 'ST', 'CatT');
title('No detrending');


nexttile;
plot(v(:,1),'o','LineWidth',2,'Color','g','MarkerSize',3);hold on;
plot(v(:,2),'-.','LineWidth',2,'Color','b','MarkerSize',6);hold on;
plot(v(:,3),'-','LineWidth',2,'Color','r');hold on;
grid on;
set(gca,'Linewidth',1.5,'box','off','GridLineWidth', 1, 'tickdir', 'out','Fontweight','bold','Fontsize',13,'XColor', 'k', 'YColor', 'k');
xlim([1 163]);ylim([0 1]);
xticks([1 41 81 121 163]);
xticklabels({});
yticks([0 0.2 0.4 0.6 0.8 1]);
yticklabels({});
xline(163,'LineWidth',1.5,'Color','k','Alpha',1);yline(1,'LineWidth',1.5,'Color','k','Alpha',1);
title('Gaussian smoothing');

nexttile;
plot(w(:,1),'o','LineWidth',2,'Color','g','MarkerSize',3);hold on;
plot(w(:,2),'-.','LineWidth',2,'Color','b','MarkerSize',3);hold on;
plot(w(:,3),'-','LineWidth',2,'Color','r');hold on;
grid on;
set(gca,'Linewidth',1.5,'GridLineWidth', 1, 'tickdir', 'out','Fontweight','bold','Fontsize',13,'XColor', 'k', 'YColor', 'k','box','off');
xlim([1 163]);ylim([0 1]);
xticks([1 41 81 121 163]);
xticklabels({});
yticks([0 0.2 0.4 0.6 0.8 1]);
yticklabels({'0', '0.2', '0.4', '0.6', '0.8', '1'});
xline(163,'LineWidth',1.5,'Color','k','Alpha',1);yline(1,'LineWidth',1.5,'Color','k','Alpha',1);
ylabel('Prediction probability','FontSize',18);


nexttile;
plot(x(:,1),'o','LineWidth',2,'Color','g','MarkerSize',3);hold on;
plot(x(:,2),'-.','LineWidth',2,'Color','b','MarkerSize',3);hold on;
plot(x(:,3),'-','LineWidth',2,'Color','r');hold on;
grid on;
set(gca,'Linewidth',1.5,'box','off','GridLineWidth', 1, 'tickdir', 'out','Fontweight','bold','Fontsize',13,'XColor', 'k', 'YColor', 'k');
xlim([1 163]);ylim([0 1]);
xticks([1 41 81 121 163]);
xticklabels({});
yticks([0 0.2 0.4 0.6 0.8 1]);
yticklabels({});
xline(163,'LineWidth',1.5,'Color','k','Alpha',1);yline(1,'LineWidth',1.5,'Color','k','Alpha',1);

nexttile;
plot(y(:,1),'o','LineWidth',2,'Color','g','MarkerSize',3);hold on;
plot(y(:,2),'-.','LineWidth',2,'Color','b','MarkerSize',3);hold on;
plot(y(:,3),'-','LineWidth',2,'Color','r');hold on;
grid on;
set(gca,'Linewidth',1.5,'box','off','GridLineWidth', 1, 'tickdir', 'out','Fontweight','bold','Fontsize',13,'XColor', 'k', 'YColor', 'k');
xlim([1 163]);ylim([0 1]);
xticks([1 41 81 121 163]);
xticklabels({'1','3', '5', '7', '9.1'});xlabel('Time', 'FontSize',18);
yticks([0 0.2 0.4 0.6 0.8 1]);
yticklabels({'0', '0.2', '0.4', '0.6', '0.8', '1'});
xline(163,'LineWidth',1.5,'Color','k','Alpha',1);yline(1,'LineWidth',1.5,'Color','k','Alpha',1);


nexttile;
plot(z(:,1),'o','LineWidth',2,'Color','g','MarkerSize',3);hold on;
plot(z(:,2),'-.','LineWidth',2,'Color','b','MarkerSize',3);hold on;
plot(z(:,3),'-','LineWidth',2,'Color','r');hold on;
grid on;
set(gca,'Linewidth',1.5,'box','off','GridLineWidth', 1, 'tickdir', 'out','Fontweight','bold','Fontsize',13,'XColor', 'k', 'YColor', 'k');
xlim([1 163]);ylim([0 1]);
xticks([1 41 81 121 163]);
xticklabels({'1', '3', '5', '7', '9.1'});
yticks([0 0.2 0.4 0.6 0.8 1]);
yticklabels({});
xlabel('Time','FontSize',18);
xline(163,'LineWidth',1.5,'Color','k','Alpha',1);yline(1,'LineWidth',1.5,'Color','k','Alpha',1);











