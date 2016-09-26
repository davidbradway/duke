
function addGIFFrame(filename,fighandle,delayTime)
% %Make an animated GIF
% filename = 'testnew.gif';
% fighandle = figure(1);
% delayTime = 1; % delay time between frames in Seconds
% for i = 1:5
%     plot(i,rand(1),'o'),hold on
%     axis([0,6,0,1])
%     addGIFFrame(filename,fighandle)
%     pause(.5)
% end

switch nargin
    case 3
        % keep all arguments
    case 2
        delayTime = 1;
    case 1
        delayTime = 1;
        fighandle = 101;
    case 0
        delayTime = 1;
        fighandle = 101;
        filename = 'file.gif';
    otherwise
        error('must have <= 3 arguments');
end

figure(fighandle);
[imind,cm] = rgb2ind(frame2im(getframe(fighandle)),256);

% make a new file?
if ~exist(filename,'file')
    imwrite(imind,cm,filename,'gif', 'Loopcount',inf,'DelayTime',delayTime);
else % file already exists, so append to it.
    imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',delayTime);
end
