Data1 = readmatrix('Forward_FI_Traj1.csv');
plot(Data1(:,1),Data1(:,2),'-o','Color',[0.76,0.60,0.42],'LineWidth',2);hold on;
mdl=fitlm(Data1(:,1),Data1(:,2));
h=plot(mdl);
delete (h(1));
delete (h(3));
h(2).LineWidth=2;
h(2).Color='r';
h(2).LineStyle='--';
set(gca,'Linewidth',1.5,'Fontsize',18,'tickdir','out','box','off','Fontweight','bold');
xlim([455 910]);
xticks([455 600 700 800 910]);
xticklabels({'4.55', '6', '7', '8', '9.1'});
xline(910,'Color','k','Alpha',1,'LineWidth',1.5);
yline(9,'Color','k','LineWidth',1.5,'Alpha',1);
ylim([3 9]);
xlabel('Time','Fontsize', 24); ylabel('FI','FontSize',24);
corr(Data1(:,1),Data1(:,2),'type','Kendall')