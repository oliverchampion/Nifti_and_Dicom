function zipnii(file_name,rm)
% Zips a file
% if rm is 1 the original will be removed
%
% Matlab code written by Oliver Gurney-Champion
% o.j.gurney-champion@amsterdamumc.nl
%
%file_name=replace(file_name,'''','\''');
%file_name=replace(file_name,' ','\ ');

system(['gzip -f "' file_name '" "' file_name '"']);
if nargin==2
    if rm==1
        system(['rm "' file_name '"']);
    end
end
end

