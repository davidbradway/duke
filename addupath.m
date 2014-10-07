function oldpath = addupath(pathtoadd)
%ADDUPATH Add directory to search path using universal naming
%   ADDUPATH fixes the input string and adds it to the path
%   Currently supported paths are from Linux and Windows VMWare
%
%   Examples
%       addupath('Z:\HostFs\tethys\jrd20\research\jiny_harfi_swei')
%       addupath('/tethys/jrd20/research/decaf_sim')
%
%   Copyright 2014 David Bradway
%   $Revision: 1 $  $Date: 2014/09/24 16:43:00 $

    oldpath = addpath(upath(pathtoadd))
end
