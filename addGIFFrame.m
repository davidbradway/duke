
function addGIFFrame(filename,fighandle)
% %Make an animated GIF
% filename = 'testnew.gif';
% fighandle=figure(1);
% for i = 1:5
%     plot(i,rand(1),'o'),hold on
%     axis([0,6,0,1])
%     addGIFFrame(filename,fighandle)
%     pause(.5)
% end

figure(fighandle);
[imind,cm] = rgb2ind(frame2im(getframe(fighandle)),256);

% make a new file?
if ~exist(filename,'file')
    imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
else % file already exists, so append to it.
    imwrite(imind,cm,filename,'gif','WriteMode','append');
end
