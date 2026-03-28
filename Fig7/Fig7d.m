clc;
clear all;
close all;
A=readmatrix('Sensitivity_Data_FI.csv');
A=reshape(A,11,15);

contourf(A',50,'linecolor','non');hold on;
contour(A','linewidth',0.85,'EdgeColor','k','ShowText','off');
colorbar('Ticks',[-0.4  0 0.5 1],'TickLabels',({'-0.4', '0', '0.5', '1'}))
c=colorbar;
colormap(parula(50));
clim([-1 0]);
set(gca,'Linewidth',1,'tickdir', 'out','Fontsize', 12,'Fontweight',' bold');
xticks([1 3 5 7 9 11]);
xticklabels({'25', '35', '45', '55', '65', '75'});
yticks([1 3 5 7 9 11 13 15]);
yticklabels({'5', '15', '25', '35', '45', '55', '65', '75'});
xlabel('Moving window (%)');ylabel('Bandwidth');
title('FI');