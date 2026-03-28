clc;
clear all;
close all;
figure('Position',[680,261,560,617]);
z=readmatrix('Equilibrium_Curve.xlsx');hold on;
w=readmatrix('Forward_TS1.csv');
plot(z(4,1:28),z(2,1:28),'Color',[0.93, 0.69, 0.13],'LineWidth',3.5);hold on;
plot(z(4,28:85),z(2,28:85),'Color',[1, 0, 0],'LineWidth',3.5,'LineStyle',':');hold on;
plot(z(4,85:end),z(2,85:end),'Color',[0.93, 0.69, 0.13],'LineWidth',3.5);hold on;
plot(w(:,1),w(:,4),'Color',[0.5, 0.5 ,0.5],'LineWidth',3.5);hold on;


xlim([500 2500]);
plot(z(4,28),z(2,28),'go','MarkerSize',8,'LineWidth',2.5);hold on;
plot(z(4,85),z(2,85),'go','MarkerSize',8,'LineWidth',2.5);hold on;
set(gca,'Fontsize',24,'Linewidth',1.5);
xlabel('$D_{ext}$','Interpreter','latex');
ylabel('$D$','Interpreter','latex');