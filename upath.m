function outpath = upath(inpath)
%UPATH Converts universal naming
%   UPATH fixes the input string if from supported systems
%   Currently supported paths are from Linux and Windows VMWare
%   Wrap all your dirty paths in UPATH to sanitize them
%
%   Examples
%       upath('Z:\HostFs\tethys\jrd20\research\jiny_harfi_swei')
%       upath('/tethys/jrd20/research/decaf_sim')
%
%   Copyright 2014 David Bradway
%   $Revision: 1 $  $Date: 2014/09/24 16:43:00 $

if ispc()
    % if you are on a PC using VMWare
    % you need to change the slashes 
    % and add Z network drive share mapping
    outpath=['Z:\HostFs' strrep(inpath,'/','\')];
    
elseif isunix()
    % if you are on Linux, and using VMWare
    % you need to change the slashes 
    % and strip Z network drive share mapping
    outpath=strrep(strrep(inpath,'\','/'),'Z:/HostFs','');

else
    disp('add something for MACs here')
end
end
