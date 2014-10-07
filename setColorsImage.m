if(ispaper)
    foreColor=[0 0 0]; backColor=[1 1 1];
else %is presentation
    foreColor=[1 1 1]; backColor=[0 0 0];
end

%set(p,'LineWidth',2);
%set(l,'FontSize',14);   set(l,'Color',backColor);  set(l,'TextColor',foreColor);
set(yl,'FontSize',14);  set(yl,'Color',foreColor);
set(xl,'FontSize',14);  set(xl,'Color',foreColor);
set(gca,'FontSize',14); set(gca,'Color',backColor);
set(gca,'XColor',foreColor); set(gca,'YColor',foreColor);
set(gcf,'Color',backColor); set(gcf,'invertHardcopy', 'off')
axis tight
drawnow
