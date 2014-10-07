
function addGIFFrame(filename,fighandle)
% %Make an animated GIF
%filename = 'testnew51.gif';
%fighandle=figure(proc.figure);
%addGIFFrame(filename,fighandle)

figure(fighandle);
[imind,cm] = rgb2ind(frame2im(getframe(fighandle)),256);

% make a new file?
if ~exist(filename,'file')
    imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
else % file already exists, so append to it.
    imwrite(imind,cm,filename,'gif','WriteMode','append');
end

