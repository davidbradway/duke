if(ispaper)
    foreColor=[0 0 0]; backColor=[1 1 1];
else %is presentation
    foreColor=[1 1 1]; backColor=[0 0 0];
end
 
if(exist('im'))
    
end

% if(exist('cl'))
%     set(cl,'LineWidth',2);set(cl,'FontSize',16);   set(cl,'Color',backColor);
% end

if(exist('p') & ishandle(p))
    set(p,'LineWidth',2); set(p,'Color',foreColor);
end

if(exist('p1','var') & ishandle(p1))
    set(p1,'LineWidth',3); set(p1,'MarkerSize',20);
end

if(exist('p2','var') & ishandle(p2))
    set(p2,'LineWidth',3); set(p2,'MarkerSize',10);
end

if(exist('p3','var') & ishandle(p3))
    set(p3,'LineWidth',3); set(p3,'MarkerSize',20);
end


if(exist('tl') & ishandle(tl))
    set(tl,'FontSize',16);  set(tl,'Color',foreColor);
end


if(exist('l') & ishandle(l))
    set(l,'FontSize',16);   set(l,'Color',backColor);  set(l,'TextColor',foreColor);
end

if(exist('yl')  & ishandle(yl))
    set(yl,'FontSize',16);  set(yl,'Color',foreColor);
end

if(exist('xl')  & ishandle(xl))
    set(xl,'FontSize',16);  set(xl,'Color',foreColor);
end

set(gca,'FontSize',16); set(gca,'Color',backColor);
set(gca,'XColor',foreColor); set(gca,'YColor',foreColor);
set(gcf,'Color',backColor); set(gcf,'invertHardcopy', 'off')

drawnow

%{
    ispaper=1;
    colordef white
    linecolor = 'k';
    fmt = 'eps';
    set(2,'invertHardcopy','on','color','w');
    set(2,'defaultaxesfontsize',14,'defaultaxesfontweight','bold')
%}