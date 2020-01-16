function unzipnii(file_name,rm)
% Unzips a file
% if rm is 1 the zipfile will be removed
%
% Matlab code written by Oliver Gurney-Champion
% o.j.gurney-champion@amsterdamumc.nl
%
%file_name=replace(file_name,'''','\''');
%file_name=replace(file_name,' ','\ ');

if nargin==1
system(['gunzip -k "' file_name '.gz"']);
elseif nargin==2
    if rm==1
        system(['gunzip -f "' file_name '.gz"']);
    else
        system(['gunzip -f -k "' file_name '.gz"']);
    end
end
end