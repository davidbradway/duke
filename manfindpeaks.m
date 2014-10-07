function [pks,locs] = manfindpeaks(X,varargin)
    figure,plot(X)
    [locsFloat,pks]=getpts;
    locs=round(locsFloat);
    close