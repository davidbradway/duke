
function addGIFFrame(filename,fighandle,delayTime)
% ADDGIFFRAME Append a frame to a GIF from a Figure.
%   ADDGIFFRAME(FILENAME,FIGHANDLE,DELAYTIME) adds a frame to FILENAME from
%                                             FIGHANDLE with DELAYTIME sec
%   ADDGIFFRAME(FILENAME,FIGHANDLE) adds a frame to FILENAME from FIGHANDLE
%                                   with 1 sec delay between frames
%   ADDGIFFRAME(FILENAME) adds a frame to FILENAME from the current figure
%                         with 1 sec delay between frames
%   ADDGIFFRAME() adds a frame to 'file.gif' from the current figure with 1
%                 sec delay between frames
%
% Make an animated GIF, Example:
%filename = 'testnew.gif';
%fighandle = figure(1);
%delayTime = 1; % delay time between frames in Seconds
%for i = 1:5
%    plot(i,rand(1),'o'),hold on
%    axis([0,6,0,1])
%    addGIFFrame(filename,fighandle,delayTime)
%    pause(.5)
%end

switch nargin
    case 3
        % keep all arguments
    case 2
        delayTime = 1;
    case 1
        delayTime = 1;
        fighandle = gcf;
    case 0
        delayTime = 1;
        fighandle = gcf;
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
