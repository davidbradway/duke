function outpath = datadir(setpath, inpath)
%DATADIR returns a string to base directory of data
%   
%   Copyright 2017 David Bradway
%   $Revision: 1 $  $Date: 2017/10/10 16:43:00 $
persistent rootpath;

% Set the root path
if(nargin >= 1)
    if exist(setpath, 'dir')
        rootpath = setpath;
    end
end

% If not set, try default
if isempty(rootpath) 
    if ispc()
        rootpath = 'C:\Users\dpb6\Downloads';
    elseif isunix()
        rootpath = '/getlab/dpb6';
    else
        error('add something for Macs here')
    end
    % Prompt for a dir if default does not exist
    if ~exist(rootpath, 'dir')
        rootpath = uigetdir('','Select Repo Directory root');
    end
end

% Append the argument path
if(nargin == 2)
    outpath = fullfile(rootpath,inpath);
else
    outpath = rootpath;
end

end
