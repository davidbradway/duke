function [currentCount] = counter (increment)
% function [currentCount] = counter (increment)
%
%  DESCRIPTION
% persistent counter
%
%  USAGE
% count = counter    % save current value after incrementing by one
% count = counter()  % save current value after incrementing by one
% count = counter(0) % get current count without incrementing
% counter(5)         % count by fives
% counter(2)+1       % count odd numbers

persistent count;

if nargin == 0
    increment = 1;
end

if isempty(count) 
    disp 'Starting the count at 0'
    count = 0;
end

count = count+increment;
currentCount = count;
