clc
clear
z=readmatrix('Forward_EWS_Traj1.csv');
fig=figure('Position',[456,411,894,476]);


t=tiledlayout(3,4);
t.TileSpacing = 'compact';
t.Padding = 'compact';



%1
nexttile;
plot(z(:,1),z(:,2),'LineWidth',2.5,'Color',[0 0.4470 0.7410]);hold on;
mdl1=fitlm(z(:,1),z(:,2));
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('meanar');
xlim([455 910]);

%2
nexttile;
plot(z(:,1),z(:,3),'LineWidth',2.5,'Color',[0.4940 0.1840 0.5560]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('maxar');
xlim([455 910]);

%3
nexttile;
plot(z(:,1),z(:,4),'LineWidth',2.5,'Color',[0.0317,0.7074,0.3975]);hold on;
mdl3=fitlm(z(:,1),z(:,4));
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('meansd');
xlim([455 910]);

%4
nexttile;
plot(z(:,1),z(:,5),'LineWidth',2.5,'Color',[0.3010 0.7450 0.9330]);hold on;
mdl4=fitlm(z(:,1),z(:,5));
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('maxsd');
xlim([455 910]);

%5
nexttile;
plot(z(:,1),z(:,6),'LineWidth',2.5,'Color',[0.4660 0.6740 0.1880]);hold on;
mdl5=fitlm(z(:,1),z(:,6));
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('eigenmaf');
xlim([455 910]);

%6
nexttile;
plot(z(:,1),z(:,7),'LineWidth',2.5,'Color',[0.9582,0.6988,0.0185]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('mafar');
xlim([455 910]);

%7
nexttile;
plot(z(:,1),z(:,8),'LineWidth',2.5,'Color',[0.7388,0.1383,0.8310]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('mafsd');
xlim([455 910]);

%8
nexttile;
plot(z(:,1),z(:,9),'LineWidth',2.5,'Color',[0.6, 0.47, 0.48]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({});
grid on;
ylabel('pcaar');
xlim([455 910]);

%9
nexttile;
plot(z(:,1),z(:,10),'LineWidth',2.5,'Color',[1, 0.41, 0.16]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({'4.55', '9.1'});
grid on;
ylabel('pcasd');
xlim([455 910]);
xlabel('Time');

%10
nexttile;
plot(z(:,1),z(:,11),'LineWidth',2.5,'Color',[0.74,0.72,0.42]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({'4.55', '9.1'});
xlabel('Time');
grid on;
ylabel('eigencov');
xlim([455 910]);

nexttile;
plot(z(:,1),z(:,12),'LineWidth',2.5,'Color',[ 0.53,0.15,0.34]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({'4.55', '9.1'});
xlabel('Time');
grid on;
ylabel('maxcov');
xlim([455 910]);

nexttile;
plot(z(:,1),z(:,13),'LineWidth',2.5,'Color',[0.5,0.5,0]);hold on;
set(gca,'tickdir','out','linewidth',1.2,'Fontsize',12,'Fontweight','bold');
xticks([455 910]);
xticklabels({'4.55', '9.1'});
xlabel('Time');
grid on;
ylabel('mutinfo');
xlim([455 910]);