f1=figure(1);

s1=subplot(2,1,1),
p11=plot(rand(100,1))
a11=gca
set(a11,'XTickLabel','')
set(a11,'Position',get(a11,'Position').*[1 .95 1 1.2])

s2=subplot(2,1,2),
p21=plot(rand(100,1))
a21=gca
%set(a21,'XTickLabel','')
set(a21,'Position',get(a21,'Position').*[1 1 1 1.2])
