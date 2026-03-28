clc; clear all; close all;

u = readmatrix('Kendal_Tau.xlsx');

titles = {'meanar','meansd','maxar','maxsd', ...
          'eigenmaf','mafar','mafs','pcaar', ...
          'pcasd','eigencov','maxcov','mutinfo'};

figure;
tiledlayout(3,4,'TileSpacing','compact','Padding','tight');

for j = 2:13
    ax = nexttile;
    
    hold on;
    h1 = stem(1, u(1,j), 'filled', 'Color',[1 0 0.5], 'LineWidth',2.5);
    h2 = stem(2, u(2,j), 'filled', 'Color',[0 0.75 1], 'LineWidth',2.5);
    h3 = stem(3, u(3,j), 'filled', 'Color',[0 0.5 0], 'LineWidth',2.5);
    
    h1.LineStyle = '-';
    h2.LineStyle = '-.';
    h3.LineStyle = ':';
    hold off;
    xlim([0.5 3.5]);
    ylim([-1 1]);
    xticks([1 2 3])
    xticklabels({'ND', 'GK', 'Lo'});
    yticks([-1 0 1]);
   
    
    title(titles{j-1}, 'Interpreter','none', 'FontWeight','bold','FontSize',10);
    set(gca,'Linewidth',1.5,'tickdir','out','Fontweight','bold','box','on','FontSize',10);
    ax=gca;
    ax.XColor = 'k';
    ax.YColor = 'k';
 
    
    if ~ismember(j-1, [1 5 9])
        yticklabels([]);
    end
    
    if ~ismember(j-1, [9 10 11 12])
        xticklabels([]);
    end
end

sgtitle('Comparison across detrending strategies','FontWeight','bold');