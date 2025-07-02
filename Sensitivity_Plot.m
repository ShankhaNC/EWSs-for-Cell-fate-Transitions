clc;
clear all;
close all;
A=readmatrix('Sensitivity_Data_meanar.csv');
A=reshape(A,26,36);
B=readmatrix('Sensitivity_Data_maxar.csv');
B=reshape(B,26,36);
C=readmatrix('Sensitivity_Data_meansd.csv');
C=reshape(C,26,36);
D=readmatrix('Sensitivity_Data_maxsd.csv');
D=reshape(D,26,36);
E=readmatrix('Sensitivity_Data_eigenmaf.csv');
E=reshape(E,26,36);
F=readmatrix('Sensitivity_Data_mafar.csv');
F=reshape(F,26,36);
G=readmatrix('Sensitivity_Data_mafsd.csv');
G=reshape(G,26,36);
H=readmatrix('Sensitivity_Data_pcaar.csv');
H=reshape(H,26,36);
I=readmatrix('Sensitivity_Data_pcasd.csv');
I=reshape(I,26,36);
J=readmatrix('Sensitivity_Data_eigencov.csv');
J=reshape(J,26,36);
K=readmatrix('Sensitivity_Data_maxcov.csv');
K=reshape(K,26,36);
L=readmatrix('Sensitivity_Data_mutinfo.csv');
L=reshape(L,26,36);





fig=figure('Position',[329,521,1328,377]);
%fig=figure('Position',[456,239,894,648]);
t=tiledlayout(2,6);
t.TileSpacing = 'compact';
t.Padding = 'compact';

%1 meanar
nexttile;
contourf(A',50,'linecolor','non');hold on;
contour(A','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({'5', '15', '25', '35', '45', '55', '65',  '75'});
ylabel('Bandwidth');
title('meanar');


%2 maxar
nexttile;
contourf(B',50,'linecolor','non');hold on;
contour(B','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
title('maxar');

%3 meanSD
nexttile;
contourf(C',50,'linecolor','non');hold on;
contour(C','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4  0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
title('meansd');

%4 maxSD
nexttile;
contourf(D',50,'linecolor','non');hold on;
contour(D','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4  0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
title('maxsd');

%5 eigenmaf
nexttile;
contourf(E',50,'linecolor','non');hold on;
contour(E','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
title('eigenmaf');

%6 mafar
nexttile;
contourf(F',50,'linecolor','non');hold on;
contour(F','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
title('mafar');

%7 mafsd
nexttile;
contourf(G',50,'linecolor','non');hold on;
contour(G','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({'5', '15', '25', '35', '45', '55', '65',  '75'});
ylabel('Bandwidth');xlabel('Moving window (%)');
title('mafsd');



%8 pcaar
nexttile;
contourf(H',50,'linecolor','non');hold on;
contour(H','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.5 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
xlabel('Moving window (%)');
title('pcaar');

%9 pcasd
nexttile;
contourf(I',50,'linecolor','non');hold on;
contour(I','linewidth',0.85,'EdgeColor','k','ShowText','off');
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
xticks([1 6 11 16 21 26]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
xlabel('Moving window (%)');
title('pcasd');

%10 eigencov
nexttile;
contourf(J',50,'linecolor','non');hold on;
contour(J','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4  0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
xlabel('Moving window (%)');
title('eigencov');

%11 maxcov
nexttile;
contourf(K',50,'linecolor','non');hold on;
contour(K','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4 0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
xlabel('Moving window (%)');
title('maxcov');

%12 mutinfo
nexttile;
contourf(L',50,'linecolor','non');hold on;
contour(L','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4  0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
%c=colorbar;
colormap(jet(50));
clim([-0.4 1]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 6 11 16 21 26]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 6 11 16 21 26 31 36]);
yticklabels({});
xlabel('Moving window (%)');
title('mutinfo');